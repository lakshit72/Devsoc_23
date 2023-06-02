const mongoose = require("mongoose")
const express = require("express")
const cors = require("cors")
const signRout = require("./routes/SignUp")

const rout = express()

// allow cross origin requests
rout.use(cors({
    origin:"*"
}))

// set content type as json
rout.use(express.json())

//mongoDB connection
mongoose.connect("mongodb+srv://ToddLerfondler:MoeLester@huddleup.wdtw6ka.mongodb.net/?retryWrites=true&w=majority").then(()=>{
    console.log("hisps conn")
}).catch((err)=>{console.log(err)})

//Routing
rout.use("/api/signup",signRout)


//start the server at specified port
rout.listen(5000,()=>{
    console.log("Backend server started")
})
