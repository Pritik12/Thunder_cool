import 'package:flutter/material.dart';

class winescard extends StatefulWidget {
  const winescard({super.key});

  @override
  State<winescard> createState() => _winescardState();
}

class _winescardState extends State<winescard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/wine.avif"),
      ),
    );
  }
}
