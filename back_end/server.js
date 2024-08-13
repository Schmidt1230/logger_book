const express = require('express')

//Automatically called when server is initiated
const database = require('./config/database')


const app = require('./app');

app.get('/',(req,res)=>{
    res.send("Hello world")
})

app.listen(8000, () =>{
    console.log("Sever starter Port=>8000");
});



