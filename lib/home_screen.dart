import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
          child:Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter,
                  end:Alignment.center,
                  colors: [Color.fromARGB(100, 0, 0, 0),
                           Color.fromARGB(0, 0, 0, 0)],
                ),
                borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(5, 40, 5, 75), // bottom padding for overlap
                child: Column(
                  children: List.generate(
                    50,
                    (index) => ListTile(
                      title: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: <Color>[
                                  Color.fromARGB(255, 0, 0, 0),
                                  Color.fromARGB(255, 20, 20, 20),
                                  Color.fromARGB(255, 40, 40, 40),

                                ])),
                      ),
                    ),
                  ),
                ),
              )
            ),
          
        ),
        
      ),
      );
  }
  }