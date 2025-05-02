import 'package:flutter/material.dart';


void main() {
  runApp(const DashboardScreen());
}

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 33, 44),
    );
  }
}