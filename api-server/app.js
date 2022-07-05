var http = require('http');
const url = require('url');
const fs = require('fs');
const path = require('path');
const RandExp = require('randexp');
const {exec, spawn} = require("child_process");
const express = require('express');
const redis = require('redis');
const fileupload = require("express-fileupload");
// object schema defined in this project
const dataSchema = require("./schema");
const {HashRedisToJson} = require("./schema");


// env parameters
const certFolder = process.env.CERT_FOLDER;
const redisPort = process.env.PORT_RI; // 32101
const redisHost = process.env.HOST_NAME_RI; //"localhost"
const webPort = process.env.PORT_WEB; // 32101
const webHost = process.env.HOST_WEB; //"localhost"
const certCaPem = process.env.CERT_CA_PEM;
const certOrgPem = process.env.CERT_ORG_PEM;
const certOrgKeyPem = process.env.CERT_ORG_KEY_PEM;
const namespace = process.env.NAMESPACE;
const CloudNodeAddress = process.env.CLOUD_NODE_ADDRESS;
const rc = true;
const version = process.env.JANDER_VERSION;
const serviceName = process.env.SERVICE_NAME;

// routing app
var app = express();
app.use(fileupload());
app.use(express.json())


// create redis client
console.log('Create redis Client, connection with '+ redisHost + ':'+ redisPort );
const client = redis.createClient(redisPort, redisHost);
client.on('connect', function() {
  console.log('Redis ' + redisHost + ':'+ redisPort +' connected!');
});

// setup info
var id = new RandExp(/^[a-z0-9-]{3,}$/).gen()
console.log();
var info = new dataSchema.Info(id, serviceName, version)
// setup config
var cfg = new dataSchema.Config(certCaPem, certOrgPem, certOrgKeyPem, namespace, CloudNodeAddress)

/*###################################### ROUTES ##########################################################*/


app.get("/info", (req, res) =>{
    console.log("Info");
    res.send(info.info);
});

app.get("/config", (req, res) =>{
    console.log("config");
    res.send(cfg.config);
});

// list signals
app.get("/signals", (req, res) =>{
    console.log("list signals");
    let signals;
    signals = getSignals(namespace);
    signals.then(ans =>{
        res.send(ans);
    });
});


// validate signal ID
app.all("/signal/:id(*)/state", (req, res, next) =>{
    let signalId = req.params.id;
    let answer = {};
    let value;
    // validate ID
    let validId = signalIdIsValid(signalId);
    let exists = signalIdExists(signalId);
    exists.then((exists) =>{
        //console.log("Get signal " + validId + " exists " + exists);
        if (validId && (exists + 1 > 0)) {
            //console.log("Get signal " + signalId);
            next()
        }
        else {
            if (!validId){
                ans = {error: "Invalid signal ID supplied"}
                res.status(400).json(ans);
            }
            else{
                ans = {error: "Signal ID not found"}
                res.status(400).json(ans);
            }
        }
    });
})

// signal value
app.get("/signal/:id(*)/state", (req, res) =>{
    let signalId = req.params.id;
    let answer = {};
    let value;

    value = getSignalState(namespace, signalId);
    value.then(ans => {
        answer[signalId] = ans;
        ans.value = parseFloat(ans.value)
        ans.timestamp = parseInt(ans.timestamp)
        res.status(200).json(ans);
    });

});

// signal value
app.put("/signal/:id(*)/state", (req, res) =>{
    // get signalId
    let signalId = req.params.id;
    let signal = req.body;
    //console.log(req.body)
    // check if id is valid
    if(signal.hasOwnProperty('timestamp') && signal.hasOwnProperty('value') ){
        //console.log("valid schema")
    }
    else{
        res.status(405).json({error: "invalid schema", body: req.body})
        return
    }
    // update value
    let signalState = {}
    signalState.state = signal
    // transform json in flat redis key-value
    let redisSchema = dataSchema.JsonToHashRedis(signalState);
    console.log("update signal " + signalId + " with value " + JSON.stringify(redisSchema));
    let update = updateSignalState(namespace, signalId, redisSchema).then(
        (ans) =>{
            res.status(200).send("signal updated")
        }
    );
});


app.listen(webPort, function (){
    console.log('Server running at http://'+ webHost + ':' + webPort);
});


/*###################################### FUNCTIONS ##########################################################*/

// retrieve signals from a namespace
function getNamespaceKeys(namespace){
    return new Promise(resolve => {
        let allKeys = [];
        client.hkeys(namespace, function (err, hkeys) {
            if (err){
                console.log("Error retrieving keys in " + namespace);
            }
            else {
                allKeys = allKeys.concat(hkeys);
            }
            client.keys(namespace + "*", function (err, keys) {
                if (err){
                    console.log("Error retrieving keys in " + namespace);
                }
                else {
                    allKeys = allKeys.concat(keys);
                }
                resolve(allKeys);
            });
        });

    });
    //TODO add also hashes with namespaces
}

// validate signalId
function signalIdIsValid(signalId){
    let match = signalId.match(/^([a-z0-9-_\/])+$/);
    if (match){
        return true;
    }else{
        return false;
    }

}

function getSignals(namespace){
    return new Promise(resolve => {
        let signalId = decodeURIComponent(dataSchema.signalHashId(namespace,"*"));
        let hashIds = [];
        client.keys(signalId, function (err, hKeys) {
            if (err){
                console.log("Error retrieving keys in " + namespace);
            }
            else {
                hashIds = hashIds.concat(hKeys);
            }
            // transform hashId to signalId
            let allKeys = hashIds.map(function(e) {
                e = dataSchema.hashIdToSignal(e);
                return e;
            });
            resolve(allKeys);
        });
    });
}

function signalIdExists(signal) {
    return new Promise(resolve => {
        let signalId = dataSchema.signalHashId(namespace,signal);
        let hashIds = [];
        client.exists(signalId, function (err, exists) {
            if (err){
                console.log("Error retrieving keys in " + signalId);
            }
            else {
                //console.log("key " + signalId);
                resolve(exists);
            }
        });
    });
}

// get signal value
function getSignalValue(namespace, signalId){
    return new Promise(resolve => {
        let value;
        // get value from hash namespace
        client.hget(namespace, signalId, function (err, hValue) {
            if (err){
                console.log("Error retrieving key " + signalId);
            }
            else {
                if (value){
                    console.log(namespace +" " + signalId );
                    resolve(hValue);
                }
                else{
                    client.get(signalId, function (err, keyValue) {
                        if (err){
                            console.log("Error retrieving key " + signalId);
                        }
                        else {
                            if (value){
                                //console.log(namespace +" " + keyValue );
                                resolve(keyValue);
                            }
                            else{

                            }
                        }
                    });
                }
            }
        });
    });

}


// load signals within the hash having name = to namespace
function updateSignalValue(namespace, signalId, signalValue){
    return new Promise(resolve => {
        let allKeys = [];
        client.hset(namespace, signalId, signalValue, function (err, returnValue) {
            if (err){
                console.log("Error during loading " + namespace);
            }
            else {
                resolve(returnValue);
            }
        });
    });
}

// get signal value
function getSignalState(namespace, signalId){
    return new Promise(resolve => {
        let hashId = dataSchema.signalHashId(namespace, signalId);
        let value;
        // get values from hash namespace
        client.hgetall(hashId, function (err, hValue) {
            if (err){
                console.log("Error retrieving key " + hashId);
                resolve(err);
            }
            else {
                if (hValue){
                    console.log("ok  " + hashId)
                    let outValue = HashRedisToJson(hValue);
                    resolve(outValue.state);
                }
                else{
                    console.log("not found value for " + hashId);
                    resolve({error: "not found"});
                }
            }
        });
    });

}
// signal state is a json  with value and timestamp
function updateSignalState(namespace, signalId, signalState){
    return new Promise(resolve => {
        let hashId = dataSchema.signalHashId(namespace, signalId);
        client.hmset(hashId, signalState, function (err, returnValue) {
            if (err){
                console.log("Error during loading " + namespace);
            }
            else {
                resolve(returnValue);
            }
        });
    });
}


