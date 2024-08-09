import 'package:flutter/material.dart';

class MyButton  extends StatelessWidget{
  final String text;

  const MyButton({
    super.key,
    required this.text
    });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child : 
      ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  ),
                  onPressed: () => print('pressed'),
                  child: Text(text),
                ),
    );
  }
}