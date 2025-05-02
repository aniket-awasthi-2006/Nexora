import 'package:flutter/material.dart';
import 'package:nexora/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nexora",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(primaryColor: Colors.black),
      home: SplashScreen(),
      );
    
  }
}
