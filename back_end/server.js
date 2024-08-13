const express = require('express')
const mongoose = require('mongoose')
const dotenv = require('dotenv')


const app = express();


dotenv.config();


async function connect(){
    try {
        await mongoose.connect(process.env.URI)
        console.log("Successfully connected=> Mongoose")
    }
    catch (error){
        console.error(error);}
}

connect();
app.listen(8000, () =>{
    console.log("Sever starter Port=>8000");
});

