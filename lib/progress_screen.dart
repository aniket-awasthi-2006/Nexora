import 'package:flutter/material.dart';

void main() {
  runApp(const ProgressScreen());
}

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});
  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
      body: SafeArea(
        top: false,
        child: Container(color: Color.fromARGB(255, 30, 30, 30)),
      ),
    );
  }
}
