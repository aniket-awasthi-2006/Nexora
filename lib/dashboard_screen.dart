import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const DashboardScreen());
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
      Padding(padding:EdgeInsets.all(8),child:Icon(CupertinoIcons.collections_solid,size:35,color: Colors.white)),
      Padding(padding:EdgeInsets.all(8),child:Icon(CupertinoIcons.sparkles,size:35,color: Colors.white)),
      Padding(padding:EdgeInsets.all(8),child:Icon(Icons.leaderboard_rounded,size:35,color: Colors.white)),

    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      bottomNavigationBar:CurvedNavigationBar(
        height: 75 ,
        color: const Color.fromARGB(255, 20, 20, 20),
        items: items,
        backgroundColor: Colors.transparent,
        
        
        ), );
  }
}
