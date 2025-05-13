import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nexora/topic_generation.dart';
import 'package:nexora/progress_screen.dart';
import 'package:nexora/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Navigations()),
  );
}

class Navigations extends StatefulWidget {
  const Navigations({super.key});
  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(), 
    const TopicGenScreen(),
    const ProgressScreen(),
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Padding(
        padding: EdgeInsets.all(8),
        child: Icon(
          CupertinoIcons.collections_solid,
          size: 25,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8),
        child: Icon(CupertinoIcons.sparkles, size: 25, color: Colors.white),
      ),
      Padding(
        padding: EdgeInsets.all(8),
        child: Icon(Icons.leaderboard_rounded, size: 25, color: Colors.white),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 30, 30, 30),
              child: IndexedStack(index: currentIndex, children: screens),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CurvedNavigationBar(
                height: 63,
                color: const Color.fromARGB(255, 25, 25, 25),
                items: items,
                index: currentIndex,
                backgroundColor: Colors.transparent,

                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
