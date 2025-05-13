
import 'package:flutter/material.dart';

void main() {
  runApp(const TopicGenScreen());
}

class TopicGenScreen extends StatefulWidget {
  const TopicGenScreen({super.key});
  @override
  State<TopicGenScreen> createState() => _TopicGenScreenState();
}

class _TopicGenScreenState extends State<TopicGenScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25,25,25),
      body:SafeArea(
        top:false,
        child: Container(
          color: Color.fromARGB(255,30,30,30),
            ),
      )
  
        );
        
  }
  }