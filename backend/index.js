require("dotenv").config()
const mongoose = require("mongoose")
const express = require("express")
const cors = require("cors")
const signRout = require("./routes/SignUp")
const loginRout = require("./routes/Login")

const rout = express()

// allow cross origin requests
rout.use(cors({
    origin:"*"
}))

// set content type as json
rout.use(express.json())

//mongoDB connection
mongoose.connect(process.env.MONGO_URL).then(()=>{
    console.log("hisps conn")
}).catch((err)=>{console.log(err)})

//Routing
rout.use("/api/signup",signRout)
rout.use("/api/login",loginRout)


//start the server at specified port
rout.listen(5000,()=>{
    console.log("Backend server started")
})
