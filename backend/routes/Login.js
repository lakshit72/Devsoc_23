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

            const hashPass = CryptoJs.AES.decrypt(req.body.password,"HughGRection").toString(CryptoJs.enc.Utf8)

            if(hashPass !== req.body.password){
                res.status(401).json("incorrect password")
                return false
            }

            const acsToken = jwt.sign({
                id:user._id,
                username:user.userName
            },
            "tubule",
            {expiresIn:"3d"})

            const {password,...others} = user._doc
            console.log(...others)

            res.status(200).json({acsToken})

        }catch(err){
            res.status(500).json(err)
        }
})

module.exports = router