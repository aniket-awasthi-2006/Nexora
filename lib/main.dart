import 'package:flutter/material.dart';
import 'package:nexora/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
  [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],);
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
