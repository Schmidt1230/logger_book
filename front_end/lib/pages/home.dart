import 'package:flutter/material.dart';
import 'package:logger_book/components/myButton.dart';
import 'package:logger_book/components/textBox.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomeScreen extends StatelessWidget { 
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue[400]!,
            Colors.blue,
        ])
      ),),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.transparent,
        gap: 3,
        tabs: const [
          GButton(icon: Icons.home,
                  text: "Home",
          ),
          GButton(icon: Icons.camera_alt,
                  text: "Camera",
                  ),
         GButton(icon: Icons.view_timeline_outlined,
                  text: "Shifts"
                  ),
          
          /*GButton(icon: Icons.attach_money,
                  //text: "Earning",
                  ),
          */
          GButton(icon: Icons.logout,
          text: "Logout",
          )

      ],),
    );
  }
  }