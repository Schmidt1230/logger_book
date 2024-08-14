const UserService = require("../services/user.services")

exports.register = async(req, res, next)=>{
    try{
        const{email,password} = req.body;

        const success = await UserService.signUp(email,password);
        res.json({status:"true",success: 'User has successfully signed up'});
    }catch(error){
        throw error;
    }
}