// config schema

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


class Signal {
    constructor(id, source, w, r, time= NaN, value=NaN) {
        this.signalObject =  {
            description: {
                id: id,
                source: source,
                writable: w,
                readable: r
            },
            state: {
                timestamp: time,
                value: value
            }
        }
    }
    get state(){
        return this.signalObject.state
    }
    get description(){
        return this.signalObject.description
    }
    get signal(){
        return this.signalObject
    }
    setState(timestamp, value){
        this.signalObject.state.timestamp = parseInt(timestamp);
        this.signalObject.state.value = parseFloat(value);
    }
}


var signal = {
    description: {
            id:"test",
            source:"",
            writable: "",
            readable: ""
        },
    state: {
        timestamp:"",
        value:""
    }
};

// flattens on two level
var redisHash = {};
for (k in signal){
    for (kk in signal[k]){
        let joinedKey = k + ":" + kk;
        redisHash[k + ":" + kk] = signal[k][kk];
    }
}

// only 2 levels
function JsonToHashRedis(signal){
    let redisHash = {};
    for (k in signal){
        for (kk in signal[k]){
            let joinedKey = k + ":" + kk;
            redisHash[k + ":" + kk] = signal[k][kk];
        }
    }
    return redisHash;
}

// only 2 levels
function HashRedisToJson(jsDict, separator=":"){
    let outNested = JSON.parse("{}");
    for (let k in jsDict){
        let fields = k.split(separator);
        let obj = nestEl(jsDict[k], fields[1]);
        outNested[fields[0]] = {...outNested[fields[0]], ...obj};
    }
    return outNested;
}

function nestEl(prev, next){
    let obj = {};
    obj[next] = prev
    return obj;
}


// transform signalId to hash ID
function signalHashId(namespace, signalId){
    return namespace + ":signalId:" + encodeURIComponent(signalId);
}
// transform hash ID to signalId
function hashIdToSignal(hashId){
    return decodeURIComponent(hashId.split("signalId:")[1]);
}



/*
var redisHash = {

    "desc:id":"",
    "desc:source":"",
    "desc:writable": "",
    "desc:readable": "",
    "state:timestamp":"",
    "state:value":""
};

 */

module.exports.signal = signal;
module.exports.redisSignal = redisHash;
module.exports.signalHashId = signalHashId;
module.exports.hashIdToSignal = hashIdToSignal;
module.exports.JsonToHashRedis = JsonToHashRedis;
module.exports.HashRedisToJson = HashRedisToJson;
module.exports.Signal = Signal;
module.exports.Info = Info;
module.exports.Config = Config;


//var Sign = new Signal("ciccio", "boh", false, r=false, time=Date.now(), value=15)

//console.log(Sign.state)