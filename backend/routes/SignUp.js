const router = require("express").Router()
const cryptoJs = require("crypto-js")
const User = require("../models/User")

// registering new user
router.post("/",async (req,res)=>{
    const newUser = new User({ 
        userName:req.body.username,
        userPassWord:cryptoJs.AES.encrypt(req.body.password,"HughGRection").toString(),
        linkedIn:req.body.linkedIn,
        desc:req.body.desc,
        skills:req.body.skills
    })

    try{
        const savedUser = await newUser.save()
        res.status(200).json(savedUser)
    }catch(err){
        res.status(500).json(err)
    }
})

module.exports = router