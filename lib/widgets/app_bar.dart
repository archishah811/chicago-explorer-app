//https://api.flutter.dev/flutter/material/AppBar-class.html
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Welcome to Chicago",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)), // Rounded bottom
        child: Image.asset(
          'assets/chicago_skyline.jpeg', // Make sure this image exists!
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: Colors.transparent, // Transparent to show the image
      elevation: 0, // No shadow effect
    );
  }
}
