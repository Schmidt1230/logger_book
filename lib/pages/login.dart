import 'package:flutter/material.dart';
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
              Text('LoggerBook',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
                ),),

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

            ],
          ),
        ),
      ),
    );
  }
}
