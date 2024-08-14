import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:logger_book/components/myButton.dart';
import 'package:logger_book/components/textBox.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() async {
    if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      if (passwordController.text == confirmPasswordController.text) {
        
        // API statement in JSON format
        var regBody = {
          "email": usernameController.text,
          "password": passwordController.text
        };
        
        //Attempt to add user to database
        try {
          var res = await http.post(
            Uri.parse("http://localhost:8000/signup"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode(regBody),
          );

          if (res.statusCode == 200) {
            print('Registration successful');
          } else {
            print('Registration failed: ${res.body}');
          }
        } catch (e) {
          print('Error: $e');
        }
      } else {
        print('Passwords do not match');
      }
    } else {
      print('Username and password cannot be empty');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SignUp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Text widget to display nice message
              Card(
                elevation: 20,
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 8),
                      const Text(
                        'LoggerBook',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
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

              TextBox(
                controller: confirmPasswordController,
                hintText: 'Verify password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              //SignUp Button
              MyButton(
                text: 'Process',
                onPressed: signUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
