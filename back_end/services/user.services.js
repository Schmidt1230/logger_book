const UserModel = require('../model/user.model')

class UserService{
    static async signUp(email,password){
        try{
            const newUser = new UserModel({email,password});
            return await newUser.save();
    }
    catch(error){
        throw error;
    }}
    
}

module.exports = UserService;