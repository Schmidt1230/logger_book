const router = require('express').Router();
const UserController = require("../controller/user.controller")

router.post('/signup',UserController.register);

module.exports = router;