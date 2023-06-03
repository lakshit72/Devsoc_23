const router = require("express").Router()
const CryptoJs = require("crypto-js")
const jwt = require("jsonwebtoken")
const User = require("../models/User")

router.post("/", async (req,res)=>{
        try{
            const user = await User.findOne({
                userName:req.body.username
            })

            if(!user){
                res.status(401).json("incorrect credentials")
                return false
            }

            const hashPass = CryptoJs.AES.decrypt(user.userPassWord,process.env.ENC_KEY).toString(CryptoJs.enc.Utf8)

            if(hashPass !== req.body.password){
                res.status(401).json("incorrect password")
                return false
            }

            const acsToken = jwt.sign({
                id:user._id,
                username:user.userName
            },
            process.env.JWT_KEY,
            {expiresIn:"3d"})

            const userName = user.userName
            res.status(200).json({userName,acsToken})

        }catch(err){
            res.status(500).json(err)
        }
})

module.exports = router