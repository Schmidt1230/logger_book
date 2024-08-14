const express = require('express');
const bodyparser = require('body-parser')
const userRouter = require('./routers/user.route')
const app = express();
app.use(bodyparser.json())

app.use('/',userRouter)

module.exports = app;