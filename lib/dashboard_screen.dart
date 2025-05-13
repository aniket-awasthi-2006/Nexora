import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nexora/topic_generation.dart';
import 'package:nexora/progress_screen.dart';

void main() {
  runApp(const DashboardScreen());
}

void screenShifter(BuildContext context,int index){

  switch (index) {
    case 0: Navigator.push(context,MaterialPageRoute(builder: (context) => const DashboardScreen()));
    break;
    case 1: Navigator.push(context,MaterialPageRoute(builder: (context) => const TopicGenScreen()));
    break;
    case 2: Navigator.push(context,MaterialPageRoute(builder: (context) => const ProgressScreen()));
    break;
    
  }
}
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Padding(
          padding: EdgeInsets.all(10),
          child: Icon(CupertinoIcons.collections_solid,
              size: 25, color: Colors.white)),
      Padding(
          padding: EdgeInsets.all(10),
          child:
              Icon(CupertinoIcons.sparkles, size: 25, color: Colors.white)),
      Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.leaderboard_rounded, size: 25, color: Colors.white)),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25,25,25),
      body:SafeArea(
        top:false,
        child: Container(
          color: Color.fromARGB(255,30,30,30),
          child: Stack(
          children: [
            Container(
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
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child:CurvedNavigationBar(
                  height: 65,
                  color: const Color.fromARGB(255, 25, 25, 25),
                  items: items,
                  index:index,
                  backgroundColor: Colors.transparent,
                  buttonBackgroundColor: Color.fromARGB(255, 28, 28, 28),
                  onTap:(index) => screenShifter(context,index)
                ),
              ),
          ],
        ),
        
      ),
      ),
    );
  }
  }