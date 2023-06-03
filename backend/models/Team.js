const mongoose = require("mongoose")

const TeamSchema = new mongoose.Schema({
    leader:{type:String,required:true},
    members:[{
        type:String
    }],
    teamName:{type:String,required:true},
    eventName:{type:String,required:true},
    maxMembers:{type:Number},
    active:{type:Boolean,required:true},
    coordinates:[{
        latitude:{type:String},
        longitude:{type:String}
    }]
})

module.exports = mongoose.model("Team",TeamSchema)