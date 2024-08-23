import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cartrose1 extends StatefulWidget {
  const cartrose1({super.key});

  @override
  State<cartrose1> createState() => _cart1State();
}

class _cart1State extends State<cartrose1> {
  List<dynamic> _cart2 = [];
  void initState() {
    super.initState();
    _loaddata();
  }

  Future<void> _loaddata() async {
    String data = await rootBundle.loadString('assets/Rosecart.json');
    setState(() {
      _cart2 = jsonDecode(data);
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
              itemCount: _cart2.length,
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
                                "https://media.istockphoto.com/id/1181239230/photo/bottle-with-rose-wine-and-blank-label-on-white-background.jpg?s=612x612&w=0&k=20&c=8_3gIFMCjFGJ1Pn2Rox4wvjxCsRJfjrtvwgh-mvrWMY="),
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
                                child: Text(
                                  "NEW ARRIVAL",
                                  style: TextStyle(color: Colors.black38),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              child: Text(
                                "ROSE WINE PLEATED ONE WITH COCKTAIL",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    _cart2[index]["texture2"].toString(),
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
                                "The rose flower wine with its girly colour and a moderate level of alcohol (11%) is ideal for getting tipsy and relaxing.",
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
                                child: Text("₹4500.00"),
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
