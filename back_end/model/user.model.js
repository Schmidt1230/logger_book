const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
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
);

userSchema.pre('save', async function(){
    try{
        var user = this; //Refers to schema user
        const salt = await(bcrypt.genSalt(10));
        const hashPassword = await bcrypt.hash(user.password,salt);
        
        //overwrites user input password with the encrypted password before being sent to the database.
        user.password = hashPassword;
    }
    catch(error){
        throw error;
    }
})

const UserModel = mongoose.model('user',userSchema);


module.exports = UserModel;