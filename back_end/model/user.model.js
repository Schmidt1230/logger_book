const mongoose = require('mongoose');

const db = require('../config/database');

const {Schema} = mongoose;

const userSchema = new Schema({
    email : {
        type : String,
        lowercase: true,
        unique : true,

    },
    password : {
        type : String,
        lowercase: true,
    }
}
)

const UserModel = mongoose.model('user',userSchema);


module.exports = UserModel;