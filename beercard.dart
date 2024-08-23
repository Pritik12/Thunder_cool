import 'package:flutter/material.dart';

class beerscard extends StatefulWidget {
  const beerscard({super.key});

  @override
  State<beerscard> createState() => _beerscardState();
}

class _beerscardState extends State<beerscard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/beer.webp"),
      ),
    );
  }
}
