//https://chatgpt.com/
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the home screen

void main() {
  runApp(ChicagoSightseeingApp());
}

class ChicagoSightseeingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'Chicago Sightseeing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
