import 'package:flutter/material.dart';
import 'package:logger_book/components/myButton.dart';
import 'package:logger_book/components/textBox.dart';



class LoginScreen extends StatelessWidget { 
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              //Text wdiget to display nice message
              Card(elevation: 20 ,
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 8),
                    const Text('LoggerBook',
                    style: TextStyle(fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),)
                  ],
                  ),
                  ),
              ),

              const SizedBox(height: 20),
              
              //Username TextBox
              TextBox(
                controller: usernameController,
                hintText: 'User',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              //Password TextBox
              TextBox(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),
              
              //Login Button
              MyButton(
                text: 'Login',
                onPressed: ()=>{print('Login')},
              ),

              const SizedBox(height: 10),
              //SignUp Button
              MyButton(
                text: 'SignUp',
                onPressed: ()=>{print('SignUp')},
              )
            ],
          ),
        ),
      ),
    );
  }
}
