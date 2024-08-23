import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cartfirst extends StatefulWidget {
  const cartfirst({super.key});

  @override
  State<cartfirst> createState() => _cart1State();
}

class _cart1State extends State<cartfirst> {
  List<dynamic> _cart = [];
  void initState() {
    super.initState();
    _loaddata();
  }

  Future<void> _loaddata() async {
    String data = await rootBundle.loadString('assets/Grapescart.json');
    setState(() {
      _cart = jsonDecode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/1384/1384079.png",
                height: 25,
                width: 30,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "THUNDER COOL",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: _cart.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Container(
                      height: 300,
                      width: 360,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1017647288/photo/bottles-and-wineglasses-with-grapes-at-sunset.jpg?s=612x612&w=0&k=20&c=tFFSMx9ksjttJNGFDcf2b5K4FyosQ2_HnP0GwbDkfNs="),
                          ),
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                      child: Row(children: [
                    Container(
                      height: 40,
                      width: 160,
                      margin: EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 30,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 160,
                      margin: EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            Icon(
                              Icons.share,
                              size: 30,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.share,
                              size: 30,
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Container(
                      child: Container(
                        height: 350,
                        width: 380,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(0)),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 230, top: 15),
                                child: Text("New Arrival")),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              child: Text(
                                "CRAZY GRAPES WINE FRESH PURE WINE",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    "4.5",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "wine grape varieties are used to make different types of wines and they come in many colours, shapes, sizes, flavours, and aromas.",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 60, right: 260),
                              child: Text(
                                '750ML',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                            Row(children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, top: 10),
                                child: Text("₹2500.00"),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 120),
                                  height: 30,
                                  width: 120,
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Text(
                                      'ADD TO CART',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Colors.black,
                                  )),
                            ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ]));
              })),
    );
  }
}
