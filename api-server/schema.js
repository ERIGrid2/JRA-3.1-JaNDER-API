const zip = (...arr) => {
    const zipped = [];
    arr.forEach((element, ind) => {
        element.forEach((el, index) => {
            if(!zipped[index]){
                zipped[index] = [];
            }
            if(!zipped[index][ind]){
                zipped[index][ind] = [];
            }
            zipped[index][ind] = el || '';
        })
    });
    return zipped;
};

const merge = (target, source) => {
    // Iterate through `source` properties and if an `Object` set property to merge of `target` and `source` properties
    for (const key of Object.keys(source)) {
        if (source[key] instanceof Object) Object.assign(source[key], merge(target[key] || {}, source[key]))
    }
    // Join `target` and modified `source`
    Object.assign(target || {}, source)
    return target
}

// redis hash key name for cahnnel
function channelHashId(namespace, channelId){
    return namespace + ":channelId:" + channelId;
}

function hashIdToChannel(hashId){
    return decodeURIComponent(hashId.split("channelId:")[1]);
}

function hashToObj(jsDict, separator=":"){
    let outNested = JSON.parse("{}");
    for (let k in jsDict){
        let fields = k.split(separator);
        let result = fields.reverse().reduce((res, key) => ({[key]: res}), jsDict[k]);
        outNested = merge(outNested, result)
    }
    return outNested;
}

function isJsonString(str) {
    try {
        JSON.parse(str);
    } catch (e) {
        return false;
    }
    return true;
}

function parseChannelDesc(channelDesc){
    let parser = {
        id: (field) => {return field},
        description: (field) => {return field},
        payload: (field) => {return field},
        range: (field) => { return isJsonString(field) ? JSON.parse(field) : ""},
        writable: (field) => {return (field === 'true')},
        readable: (field) => {return (field === 'true')},
        datatype: (field) => {return field},
        unit: (field) => {return field},
        rate: (field) => {return field}
    }
    Object.keys(channelDesc).forEach(field => {channelDesc[field] = parser[field](channelDesc[field])})
    return channelDesc
}

function parseDynamicDesc(dynamicDesc, datatype){
    let parser = {
        id: (field) => {return parseInt(field)},
        timestamp: (field) => {return parseInt(field)},
        timesource: (field) => {return field},
        value: (field) => {
            switch (datatype){
                case "float":
                    return parseFloat(field)
                case "integer":
                    return parseInt(field)
                case "complex":
                    return JSON.parse(field)
                case "string":
                    return field
                case "boolean":
                    return (field === "true")
                default:
                    return field
            }
        },
        validity: (field) => {return field},
        source: (field) => {return field}
    }
    Object.keys(dynamicDesc).forEach(field => {dynamicDesc[field] = parser[field](dynamicDesc[field])})
    return dynamicDesc
}

function ValidationException(message) {
    this.message = message;
    this.name = 'ValidationException';
}

// validate channel attributes
function validateChannelInfo(chDescription){
    let enumValues = {
        datatype: ["float", "complex", "integer", "string", "boolean"],
        payload: ["samples", "events"],
        source: ["unknown", "process", "test", "calculated", "simulated"],
        writable: [true, false],
        readable: [true, false],

    }
    try {
        // validate ID
        let match = chDescription.id.match(/^[a-zA-Z0-9-_/.:]+$/);
        if (!match) {
            throw new ValidationException("invalid channel name. ")
        }

        // validate enum types
        for (let attr in chDescription) {
            if (attr in enumValues) {
                if (!enumValues[attr].includes(chDescription[attr])) {
                    throw new ValidationException("invalid value provided for attribute " + attr + " ## values expected: " + JSON.stringify(enumValues[attr]) + " ## value given: " + chDescription[attr])
                }
            }
        }
        // validate range
        // if datatype is a string, range should be a list of string
        if (chDescription.datatype === "string") {
            if (Array.isArray(chDescription.range)) {
                //console.log(chDescription.range)
                let checkArray = chDescription.range.filter(opt => {
                    return (!(typeof opt === "string"))
                })
                if (checkArray.length !== 0) {
                    throw new ValidationException("invalid range options: one of the options is not a string" + checkArray)
                }
            } else {
                throw new ValidationException("invalid range provided: should be an array of strings")
            }
        }
        // if datatype is a number, range should be an obj with min and/or max values
        else if (["integer", "float"].includes(chDescription.datatype)) {
            if (typeof chDescription.range === "object") {
                let nCond = Object.keys(chDescription.range).length
                let cond1 = ("max" in chDescription.range && typeof chDescription.range.max === "number")
                let cond2 = ("min" in chDescription.range && typeof chDescription.range.min === "number")
                if (!(((cond1 || cond2) && nCond === 1) || (cond1 && cond2 && nCond === 2))) {
                    throw new ValidationException("invalid range options provided: check min and max ")
                }
            } else {
                throw new ValidationException("invalid range provided: should be an object with min and max values, e.g.{min:1, max:3}")
            }
        } else {
            //console.warn("range check disabled for type " + chDescription.datatype)
        }

        //validate unit
        if (typeof chDescription.unit !== "string") {
            throw new ValidationException("invalid unit  provided: should be a string")
        }
    }catch (err){
        console.error(err.name + " " + err.message)
        return false
    }
    return true
}

// validate sample/event attributes
function validateChannelDynamic(channel, dynamic){
    let enumValues = {
        source: ["unknown", "process", "test", "calculated", "simulated"],
        validity: ["unknown", "valid", "invalid", "questionable", "indeterminate"],
        timesource: ["synchronized", "unsynchronized", "unknown"]
    }
    try {
        // validate ID if event
        if ("id" in dynamic){
            let match = typeof dynamic.id === "number";
            if (!match) {
                throw new ValidationException("ID Should be integer")
            }
        }

        // validate enum types
        for (let attr in dynamic) {
            if (attr in enumValues) {
                if (!enumValues[attr].includes(dynamic[attr])) {
                    throw new ValidationException("invalid value provided for attribute " + attr + " ## values expected: " + JSON.stringify(enumValues[attr]) + " ## value given: " + dynamic[attr])
                }
            }
        }

        // validate value
        switch (channel.attr.datatype) {
            case "float":
                if (typeof dynamic.value === "number") {
                    break
                }else{
                    throw new ValidationException("invalid value, expected " + channel.attr.datatype)
                }
            case "integer":
                if (typeof dynamic.value === "number") {
                    break
                }else{
                    throw new ValidationException("invalid value, expected" + channel.attr.datatype)
                }
            case "complex":
                // if value is an object only allowed value is complex
                if (typeof dynamic.value === "object") {
                    let cond1 = ("imag" in dynamic.value && typeof dynamic.value.imag === "number")
                    let cond2 = ("real" in dynamic.value && typeof dynamic.value.real === "number")
                    if (!(cond1 && cond2)) {
                        throw new ValidationException("invalid range options provided: check min and max ")
                    }
                    break
                }else{
                    throw new ValidationException("invalid value, expected " + channel.attr.datatype)
                }
            case "string":
                if (typeof dynamic.value === "string") {
                    break
                }else{
                    throw new ValidationException("invalid value, expected " + channel.attr.datatype)
                }
            case "boolean":
                if (typeof dynamic.value === "boolean") {
                    break
                }else{
                    throw new ValidationException("invalid value, expected " + channel.attr.datatype)
                }
            default:
                break
        }
        return true

    } catch (err){
        console.error(err.name + " " + err.message)
        return false
    }

}


class Config {
    constructor(certCaPem, certOrgPem, certOrgKeyPem, namespace, CloudNodeAddress ){
        this.cfgObject = {
            certCaPem: certCaPem,
            certOrgPem: certOrgPem,
            certOrgKeyPem: certOrgKeyPem,
            namespace : namespace,
            CloudNodeAddress: CloudNodeAddress
        }
    }
    get config(){
        return this.cfgObject
    }
}

// info schema
class Info {
    constructor(id, transportType, transportVersion){
        this.infoObject = {
            NodeId: id,
            transport: {
                type: transportType,
                version: transportVersion
            }
        }
    }
    get info(){
        return this.infoObject
    }
}

class Channel {
    constructor(namespace, channelInfo) {
        this.namespace = namespace
            let isValid = validateChannelInfo(channelInfo)
            if (isValid) {
                this.attr = {
                    id: channelInfo.id,
                    description: channelInfo.description,
                    payload: channelInfo.payload,
                    range: channelInfo.range,
                    writable: channelInfo.writable,
                    readable: channelInfo.readable,
                    datatype: channelInfo.datatype,
                    unit: channelInfo.unit,
                    rate: channelInfo.rate
                }
            }
            else{
                throw  new ValidationException(" Validation error, check channel fields!")
            }
    }

    get description(){
        return this.attr
    }

    hashId() {
        return this.namespace + ":channelId:" + this.attr.id;
    }

    hashAttr(){
        let redisHash = {}
        for (let key in this.attr){
            if (typeof this.attr[key]=== "object"){
                redisHash[this.constructor.name + ":" + key] = JSON.stringify(this.attr[key]);
            }
            else{
                redisHash[this.constructor.name + ":" + key] = this.attr[key];
            }
        }
        return redisHash
    }
}

class ChannelDynamic {
    constructor(channel, dynamic) {
        this.channel = channel
        let isValid = validateChannelDynamic(channel, dynamic)
        if (isValid){
            this.attr = {
                timestamp: dynamic.timestamp,
                timesource: dynamic.timesource,
                value: dynamic.value,
                validity: dynamic.validity,
                source: dynamic.source
            }
        }
        else {
            throw  new ValidationException("Validation error")
        }

    }

    updateDynamic(Dynamic){
        validateChannelDynamic(this.channel, Dynamic)
    }

    hashAttr(){
        let redisHash = {}
        let id = ""
        if ("id" in this.attr){
            id = this.attr.id + ":"
        }
        for (let key in this.attr){
            let keyName = this.constructor.name + ":" + id + key
            if (typeof this.attr[key]=== "object"){
                redisHash[keyName] = JSON.stringify(this.attr[key]);
            }
            else{
                redisHash[keyName] = this.attr[key];
            }
        }
        return redisHash
    }
}

class Events  extends ChannelDynamic{
    constructor(channel, dynamic) {
        super(channel, dynamic)
        this.attr.id = dynamic.id
    }
}

class Samples  extends ChannelDynamic{
    constructor(channel, dynamic) {
        super(channel, dynamic)
    }
}

// redis serialization / deserialization
class JanderRedis {
    constructor(redisClient) {
        this.client = redisClient
        this.channelFields = [
            'id',       'description',
            'payload',  'range',
            'writable', 'readable',
            'datatype', 'unit',
            'rate'
        ]
        this.dynamicFields = {
            samples: ['timestamp', 'timesource', 'value', 'validity', 'source'],
            events: ['timestamp', 'timesource', 'value', 'validity', 'source', 'id']
        }

        this.validationFields = ['payload', 'datatype']
    }

    writeChannel(channel){
        return new Promise(resolve => {
            let hashId = channel.hashId()
            let attrs = channel.hashAttr()
            this.client.hmset(hashId, attrs, function (err, returnValue) {
                if (err){
                    console.log("Error during loading " + namespace);
                }
                else {
                    resolve(returnValue);
                }
            });
        });
    }

    getChannel(namespace, channelId){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            let hashFields = this.channelFields.map(field => { return "Channel:" + field})
            // get values from hash namespace
            this.client.hmget(hashId, hashFields , function (err, hValues) {
                if (err){
                    console.log("Error retrieving key " + hashId);
                    resolve(err);
                }
                else {
                    if (hValues){
                        let entries =  zip(hashFields, hValues)
                        let out = hashToObj(Object.fromEntries(entries))
                        let parseOut = parseChannelDesc(out.Channel)
                        resolve(parseOut);
                    }
                    else{
                        console.log("not found value for " + hashId);
                        resolve({error: "not found"});
                    }
                }
            });
        });
    }

    getChannelAttr(namespace, channelId, attr){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            if ( this.channelFields.includes(attr)){
                this.client.hget(hashId, "Channel:" + attr, function (err, value) {
                    if (err){
                        console.log("Error retrieving key " + hashId);
                        resolve(err);
                    }
                    else {
                        resolve(value);
                    }
                });
            }
            else{

                resolve("")
            }
        });
    }

    writeDynamic(dynamic){
        return new Promise(resolve => {
            let hashId = dynamic.channel.hashId()
            let attrs = dynamic.hashAttr()
            this.client.hmset(hashId, attrs, function (err, returnValue) {
                if (err){
                    console.log("Error during loading " + namespace);
                }
                else {
                    resolve(returnValue);
                }
            });
        });
    }

    getDynamic(namespace, channelId){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            let validationFields = this.validationFields.map(field => { return "Channel:" + field})
            let redisClient = this.client
            let oThis = this;

            // get type and value datatype
            this.client.hmget(hashId, validationFields, function (err, hValues) {

                // get channel info (wether dynamic is sample or event)
                let chInfo =  zip(validationFields, hValues)
                chInfo = hashToObj(Object.fromEntries(chInfo))

                let hashFields = oThis.dynamicFields[chInfo.Channel.payload]

                let payload = chInfo.Channel.payload.charAt(0).toUpperCase() + chInfo.Channel.payload.slice(1)
                hashFields = hashFields.map(field => { return  payload + ":" + field})

                // get values from hash namespace
                console.log(" get " + hashId + " " + hashFields)
                redisClient.hmget(hashId, hashFields , function (err, hValues) {
                    if (err){
                        console.log("Error retrieving key " + hashId);
                        resolve(err);
                    }
                    else {
                        if (hValues){
                            let entries =  zip(hashFields, hValues)
                            let out = hashToObj(Object.fromEntries(entries))
                            let parseOut = parseDynamicDesc(out[payload], chInfo.Channel.datatype)
                            resolve(parseOut);
                        }
                        else{
                            console.log("not found value for " + hashId);
                            resolve({error: "not found"});
                        }
                    }
                });
            })

        });
    }

    getMaxEventId(namespace, channelId){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            // get event hash keys with evnetId
            this.client.hkeys(hashId, function (err, hKeys) {
                const regex = /^Events:\d+:id$/g;
                let EventIdKeys = hKeys.filter(field => {return field.match(regex)}).map(field => { return parseInt(field.split(":")[1])})
                console.log(EventIdKeys)
                if (EventIdKeys.length){
                    resolve(Math.max(...EventIdKeys))
                }else{
                    resolve(0)
                }

            })
        });
    }

    getMinEventId(namespace, channelId){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            // get event hash keys with evnetId
            this.client.hkeys(hashId, function (err, hKeys) {
                const regex = /^Events:\d+:id$/g;
                let EventIdKeys = hKeys.filter(field => {return field.match(regex)}).map(field => { return parseInt(field.split(":")[1])})
                if (EventIdKeys.length){
                    resolve(Math.min(...EventIdKeys))
                }else{
                    resolve(0)
                }
            })
        });
    }

    getEvent(namespace, channelId, id){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            let validationFields = this.validationFields.map(field => { return "Channel:" + field})
            let redisClient = this.client
            let oThis = this;

            // get type and value datatype
            this.client.hmget(hashId, validationFields, function (err, hValues) {

                // get channel info (wether dynamic is sample or event)
                let chInfo =  zip(validationFields, hValues)
                chInfo = hashToObj(Object.fromEntries(chInfo))

                let hashFields = oThis.dynamicFields[chInfo.Channel.payload]

                let payload = chInfo.Channel.payload.charAt(0).toUpperCase() + chInfo.Channel.payload.slice(1)
                // added id because is an event
                hashFields = hashFields.map(field => { return  payload + ":" + id +  ":" + field})

                // get values from hash namespace
                redisClient.hmget(hashId, hashFields , function (err, hValues) {
                    if (err){
                        console.log("Error retrieving key " + hashId);
                        resolve(err);
                    }
                    else {
                        if (hValues){
                            let entries =  zip(hashFields, hValues)
                            let out = hashToObj(Object.fromEntries(entries))
                            // added id because is an event
                            let parseOut = parseDynamicDesc(out[payload][id], chInfo.Channel.datatype)
                            resolve(parseOut);
                        }
                        else{
                            console.log("not found value for " + hashId);
                            resolve({error: "not found"});
                        }
                    }
                });
            })

        });
    }

    // get all events with id greter than a given id
    getEventAfter(namespace, channelId, eventId){
        return new Promise(resolve => {
            let hashId = namespace + ":channelId:" + channelId;
            let redisClient = this.client
            let oThis = this;

            // get event hash keys with evnetId
            this.client.hkeys(hashId, function (err, hKeys) {

                // timestamp identifier
                const regex = /^Events:\d+:id$/g;
                let EventIdKeys = hKeys.filter(field => {return field.match(regex)})

                // select the events with id greater than eventId
                redisClient.hmget(hashId, EventIdKeys , function (err, hValues) {
                    let entries =  Object.fromEntries(zip(EventIdKeys, hValues))
                    let filteredIds = EventIdKeys.filter(field => {return entries[field] >= eventId}).map(field => { return field.split(":")[1]})

                    let promises = []
                    filteredIds.forEach(id => {
                        promises.push(oThis.getEvent(namespace, channelId, id))
                    })
                    Promise.all(promises).then(result => {
                        resolve(result)
                    })
                })
            })
        });
    }

    //returns array of channels names
    getChannels(namespace){
        return new Promise(resolve => {
            let channelId = decodeURIComponent(channelHashId(namespace,"*"));
            let hashIds = [];
            this.client.keys(channelId, function (err, hKeys) {
                if (err){
                    console.log("Error retrieving keys in " + namespace);
                }
                else {
                    hashIds = hashIds.concat(hKeys);
                }

                // transform hashId to signalId
                let allKeys = hashIds.map(function(e) {
                    e = hashIdToChannel(e);
                    return e;
                });
                resolve(allKeys);
            });
        });
    }

    getChannelList(namespace){
        return new Promise(resolve => {
            this.getChannels(namespace).then(channelList => {
                let promises = []
                channelList.forEach(ch => {
                    promises.push(this.getChannel(namespace, ch))
                })

                Promise.all(promises).then(result => {
                    resolve(result)
                })
            })
        })
    }

}

module.exports.JanderRedis = JanderRedis
module.exports.Config = Config
module.exports.Info = Info
module.exports.Channel = Channel
module.exports.Sample = Samples
module.exports.Event = Events


// TEST
/*
const client = redis.createClient(6379, "localhost");
client.on("connect", function() {
    console.log("Redis  connected!");
});


let channelDesc = {
    id: "test2",
    description: "",
    payload: "sample",
    range: {min:2, max:4},
    writable: true,
    readable: true,
    datatype: "complex",
    unit: "V",
    rate: ""
}

let sampleDesc = {
    timesource: "synchronized",
    value: 10,
    source: "unknown",
    validity: "unknown",
    timestamp:  Date.now()
}

let channel = new Channel("RSE", channelDesc)
let sample = new Samples(channel, sampleDesc)

console.log(channel.hashId())


let jClient = new JanderRedis(client)

jClient.writeChannel(channel).then(() => {
    console.log("Channel written")
})

jClient.writeDynamic(sample).then(() => {
    console.log("Samples written")
})



jClient.getChannel("RSE", "test").then(ans => {
    console.log(ans)
})

jClient.getDynamic("RSE", "test").then(ans => {
    console.log(ans)
})

jClient.getChannelList("RSE").then(ans => {
    console.log(ans)
})

*/