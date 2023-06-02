const jwt = require("jsonwebtoken")

const verifyToken = (req,res,next) => {
    const authHead = req.headers.token

    if(authHead){
        const token = authHead.split(" ")[1]
        jwt.verify(token,"tubule",(err,user)=>{
            if(err) res.status(403).json("token not valid")
            req.user = user
            next()
        })
    }else{
        return res.send(401).json("you are not authenticate")
    }
}

const verifyAndAuth = (req,res,next) =>{
    verifyToken(req,res,()=>{
        if(req.user.username === req.body.username){
            next()
        }else{
            res.status(403).json("not authorized to do the operation")
        }
    })
}



module.exports = {verifyToken,verifyAndAuth}