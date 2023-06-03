const mongoose = require("mongoose")

const UserSchema = new mongoose.Schema({
    userName:{type:String,required:true,unique:true},
    userPassWord:{type:String,required:true},
    teams:[{
        teamId:{type:String}
    }],
    coordinates:[{
        latitude:{type:String},
        longitude:{type:String}
    }],
    availableFor:[{
        _event:{type:String}
    }],
    linkedIn:{type:String},
    desc:{type:String},
    skills:[{
        type:String
    }],
    notifications:[{
        reqType:{type:String},
        senderId:{type:String},
        recieverId:{type:String},
        team:{type:String}
    }]
})

module.exports = mongoose.model("User",UserSchema)