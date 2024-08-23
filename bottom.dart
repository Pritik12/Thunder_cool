import 'package:flutter/material.dart';
import 'package:thumps/Restaurant.dart';
import 'package:thumps/profile.dart';
import 'package:thumps/thumps.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int current = 0;
  void tap(int index) {
    setState(() {
      current = index;
    });
  }

  List wine = [thump(), food(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wine[current],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), label: "Restaurants"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.cyan,
        onTap: tap,
        currentIndex: current,
        mouseCursor: MaterialStateMouseCursor.clickable,
      ),
    );
  }
}
