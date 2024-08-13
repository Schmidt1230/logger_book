const mongoose = require('mongoose')
const dotenv = require('dotenv')




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