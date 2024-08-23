import 'package:flutter/material.dart';

class mixers extends StatefulWidget {
  const mixers({super.key});

  @override
  State<mixers> createState() => _mixersState();
}

class _mixersState extends State<mixers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/mixers.jpg"),
      ),
    );
  }
}
