const express = require('express');
const redis = require('redis');
const fileupload = require("express-fileupload");
const Joi = require('joi')
const validator = require('express-joi-validation').createValidator({})

// object schema defined in this project
const dataSchema = require("./schema");
const {JanderRedis} = require("./schema");


// env parameters
const redisPort = process.env.PORT_RI; // 32101
const redisHost = process.env.HOST_NAME_RI || process.env.HOSTNAME;
const webPort = process.env.PORT_WEB || 8080 ; // 32101
const version = process.env.JANDER_VERSION;
const namespace = process.env.NAMESPACE;
const serviceName = process.env.SERVICE_NAME;

// Routing app
var app = express();
app.use(fileupload());
app.use(express.json())

// validation tool
const ChannelSchema = Joi.object({
    id: Joi.string().regex(/^[a-zA-Z0-9-_/.:]+$/).required() ,
    description: Joi.string().optional() ,
    payload: Joi.string().allow('sample', 'event').required(),
    range: Joi.required() ,
    writable: Joi.boolean().required() ,
    readable: Joi.boolean().required() ,
    source: Joi.string().allow("unknown", "process", "test", "calculated", "simulated").required(),
    datatype: Joi.string().allow("float", "complex", "integer", "string", "boolean").required(),
    unit: Joi.string().required(),
    rate: Joi.string().required()
})

const SampleSchema = Joi.object({
    source: Joi.string().allow("unknown", "process", "test", "calculated", "simulated").optional(),
    validity: Joi.string().allow("unknown", "valid", "invalid", "questionable", "indeterminate").optional(),
    timesource: Joi.string().allow("synchronized", "unsynchronized", "unknown").optional(),
    timestamp: Joi.number().required(),
    value: Joi.required()
})

const EventSchema = Joi.object({
    id: Joi.number().optional(),
    source: Joi.string().allow("unknown", "process", "test", "calculated", "simulated").optional(),
    validity: Joi.string().allow("unknown", "valid", "invalid", "questionable", "indeterminate").optional(),
    timesource: Joi.string().allow("synchronized", "unsynchronized", "unknown").optional(),
    timestamp: Joi.number().required(),
    value: Joi.required()
})

// Redis Client connection
console.log('Create redis Client, connection with '+ redisHost + ':'+ redisPort );
const client = redis.createClient(redisPort, redisHost);
client.on('connect', function() {
    console.log('Redis ' + redisHost + ':'+ redisPort +' connected!');
});

// client that manages data structures defined in JRA3
const jClient = new JanderRedis(client)

const id = namespace //new RandExp(/^[a-z0-9-]{3,}$/).gen()
const info = new dataSchema.Info(id, serviceName, version)


// ############################# ROUTES #############################

app.get("/info", (req, res) =>{
    console.log("Info");
    res.send(info.info);
});

app.get("/status", (req, res) =>{
    console.log("Status");
    res.json({"connected": "maybe"});
});

app.get("/channels", (req, res) =>{
    console.log("Get channels");
    jClient.getChannelList(namespace).then(ans =>{
        if (ans) {
            res.status(200).json(ans).end();
        }
        else {
            res.status(400).send()
        }
    });
});

app.put("/channel", validator.body(ChannelSchema), (req, res) =>{
    let channelDesc = {
        id: req.body.id ,
        description: req.body.description ,
        payload: req.body.payload ,
        range:  isJsonString(req.body.range) ? JSON.parse(req.body.range) : req.body.range,
        writable: req.body.writable ,
        readable: req.body.readable ,
        datatype: req.body.datatype ,
        unit: req.body.unit,
        rate: req.body.rate
    }
    try {
        let channel = new dataSchema.Channel(namespace, channelDesc)

        jClient.writeChannel(channel).then(() => {
            console.log("Channel written")
            res.status(200).send("Channel uploaded")
        })
    }catch (err){
        res.status(400).send(err.name + " " + err.message)
    }

});

app.get("/channel/:id(*)/sample", (req, res) =>{
    let channelId = req.params.id
    console.log("Get Sample " + channelId);
    let match = channelId.match(/^[a-zA-Z0-9-_/.:]+$/);
    jClient.getChannelAttr(namespace, channelId, "payload").then (payload => {
        if (payload === "sample") {
            if (match) {
                jClient.getDynamic(namespace, channelId).then(ans => {
                    let missingValues = Object.keys(ans).filter(field => {
                        return ans[field] === ""
                    }).length
                    if (!missingValues) {
                        if (ans) {
                            res.status(200).json(ans).end();
                        } else {
                            res.status(400).send()
                        }

                    } else {
                        res.status(404).send("Channel Id " + channelId + " or sample not found.")
                    }
                })
            } else {
                res.status(400).send("Invalid / malformed channel ID supplied.")
            }
        }
        else{
            res.status(404).send("Channel Id " + channelId + " is not a sample")
        }
    })

});

app.put("/channel/:id(*)/sample", validator.body(SampleSchema), (req, res) =>{
    let channelId = req.params.id;
    console.log("Update sample for channel " + channelId);
    let sampleDesc = {
        timesource : req.body.timesource || "unknown" ,
        validity : req.body.validity || "unknown",
        timestamp: req.body.timestamp,
        value : isJsonString(req.body.value) ? JSON.parse(req.body.value) : req.body.value,
        source : req.body.source || "unknown"
    }

    jClient.getChannel(namespace, channelId).then(ans => {
        if (ans.payload === "sample") {
            if (ans.id === channelId) {
                try {
                    let channel = new dataSchema.Channel(namespace, ans)
                    let sample = new dataSchema.Sample(channel, sampleDesc)

                    jClient.writeDynamic(sample).then(() => {
                        //console.log("Sample written")
                        res.status(200).send("Sample " + channelId + " updated")
                    })
                } catch (err) {
                    res.status(404).send(err.message)
                }

            } else {
                res.status(404).send("Channel Id " + channelId + " not found")
            }
        }
        else{
            res.status(404).send("Channel Id " + channelId + " is not a sample")
        }
    })
});


app.get("/channel/:id(*)/event", (req, res) =>{
    let channelId = req.params.id;
    let sinceId = req.query.since_id || 0 ;

    console.log("Get Event " + channelId);
    let match = channelId.match(/^[a-zA-Z0-9-_/.:]+$/);
    jClient.getChannelAttr(namespace, channelId, "payload").then (payload => {
        console.log(payload)
        if (payload === "event") {
            if (match) {
                jClient.getEventAfter(namespace, channelId, sinceId).then(ans => {
                    if (ans) {
                        res.status(200).json(ans).end();
                    } else {
                        res.status(400).send()
                    }
                })
            } else {
                res.status(400).send("Invalid / malformed channel ID supplied.")
            }
        }
        else{
                res.status(404).send("Channel Id " + channelId + " is not an event")
            }
    });
});


app.put("/channel/:id(*)/event", validator.body(EventSchema), (req, res) =>{

    let channelId = req.params.id;

    console.log("Update event for channel " + channelId);
    let eventDesc = {
        timesource : req.body.timesource || "unknown" ,
        validity : req.body.validity || "unknown",
        timestamp: req.body.timestamp,
        value : isJsonString(req.body.value) ? JSON.parse(req.body.value) : req.body.value,
        source : req.body.source || "unknown",
        id : parseInt(req.body.id ) || 0
    }

    jClient.getChannel(namespace, channelId).then(ans => {
        if (ans.payload === "event"){
            if (ans.id === channelId) {
                try{
                    jClient.getMaxEventId(namespace, channelId). then(maxId => {
                        let channel = new dataSchema.Channel(namespace, ans)
                        if (!eventDesc.id){
                            eventDesc.id = maxId + 1
                        }
                        let event = new dataSchema.Event(channel, eventDesc)

                        jClient.writeDynamic(event).then(() => {
                            res.status(200).send("Event " + channelId +  " updated")
                        })
                    })
                }catch (err){
                    res.status(404).send(err.message)
                }

            } else {
                res.status(404).send("Channel Id " + channelId + " not found")
            }
        }
        else{
            res.status(404).send("Channel Id " + channelId + "  is not an event")
        }
    })
});


// ############################# APP LISTENER #############################

app.listen(webPort, function (){
    console.log('Server running');
});


function isJsonString(str) {
    try {
        JSON.parse(str);
    } catch (e) {
        return false;
    }
    return true;
}

