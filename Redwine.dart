import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thumps/addcart1.dart';
import 'package:thumps/cartsecond1.dart';
import 'package:thumps/first3.dart';
import 'package:thumps/firstr4.dart';

class red extends StatefulWidget {
  const red({super.key});

  @override
  State<red> createState() => _redState();
}

class _redState extends State<red> {
  List<dynamic> _red = [];
  void initState() {
    super.initState();
    _loaddata();
  }

  Future<void> _loaddata() async {
    String data = await rootBundle.loadString('assets/redwine.json');
    setState(() {
      _red = jsonDecode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loaddata(),
        builder: (context, snapshot) {
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
                  itemCount: _red.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 375,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: "Showing Products"),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(children: [
                            Row(children: [
                              Container(
                                child: Image.network(
                                  _red[index]["wine1"].toString(),
                                  height: 120,
                                  width: 100,
                                ),
                              ),
                              Column(children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    _red[index]["text1"].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 200, bottom: 0),
                                  child: Text(
                                    _red[index]["Price1"].toString(),
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 100, top: 10),
                                      child: Text(
                                        _red[index]["ML1"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(right: 0, top: 10),
                                        width: 100,
                                        height: 35,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        cart1(),
                                                  ));
                                            },
                                            child: Text(
                                              'ADD to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          backgroundColor: Colors.black,
                                        )),
                                  ],
                                ),
                              ]),
                            ]),
                            Container(
                              margin: EdgeInsets.only(top: 14),
                              height: 1,
                              width: 360,
                              color: Colors.black12,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 270, top: 10),
                                width: 70,
                                height: 35,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Text(
                                    '750ML',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.black,
                                )),
                          ]),
                        ),
                        Container(
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(children: [
                            Row(children: [
                              Container(
                                child: Image.network(
                                  _red[index]["wine2"].toString(),
                                  height: 120,
                                  width: 100,
                                ),
                              ),
                              Column(children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    _red[index]["text2"].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 200, bottom: 0),
                                  child: Text(
                                    _red[index]["Price2"].toString(),
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 100, top: 10),
                                      child: Text(
                                        _red[index]["ML2"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(right: 0, top: 10),
                                        width: 100,
                                        height: 35,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        cartsec(),
                                                  ));
                                            },
                                            child: Text(
                                              'ADD to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          backgroundColor: Colors.black,
                                        )),
                                  ],
                                ),
                              ]),
                            ]),
                            Container(
                              margin: EdgeInsets.only(top: 14),
                              height: 1,
                              width: 360,
                              color: Colors.black12,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 270, top: 10),
                                width: 70,
                                height: 35,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Text(
                                    '950ML',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.black,
                                )),
                          ]),
                        ),
                        Container(
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(children: [
                            Row(children: [
                              Container(
                                child: Image.network(
                                  _red[index]["wine3"].toString(),
                                  height: 120,
                                  width: 100,
                                ),
                              ),
                              Column(children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    _red[index]["text3"].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 200, bottom: 0),
                                  child: Text(
                                    _red[index]["Price3"].toString(),
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 100, top: 10),
                                      child: Text(
                                        _red[index]["ML3"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(right: 0, top: 10),
                                        width: 100,
                                        height: 35,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        cartfirst3(),
                                                  ));
                                            },
                                            child: Text(
                                              'ADD to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          backgroundColor: Colors.black,
                                        )),
                                  ],
                                ),
                              ]),
                            ]),
                            Container(
                              margin: EdgeInsets.only(top: 14),
                              height: 1,
                              width: 360,
                              color: Colors.black12,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 270, top: 10),
                                width: 70,
                                height: 35,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Text(
                                    '550ML',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.black,
                                )),
                          ]),
                        ),
                        Container(
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(children: [
                            Row(children: [
                              Container(
                                child: Image.network(
                                  _red[index]["wine4"].toString(),
                                  height: 120,
                                  width: 100,
                                ),
                              ),
                              Column(children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    _red[index]["text4"].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 200, bottom: 0),
                                  child: Text(
                                    _red[index]["Price4"].toString(),
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 100, top: 10),
                                      child: Text(
                                        _red[index]["ML4"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(right: 0, top: 10),
                                        width: 100,
                                        height: 35,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        cartfirst4(),
                                                  ));
                                            },
                                            child: Text(
                                              'ADD to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          backgroundColor: Colors.black,
                                        )),
                                  ],
                                ),
                              ]),
                            ]),
                            Container(
                              margin: EdgeInsets.only(top: 14),
                              height: 1,
                              width: 360,
                              color: Colors.black12,
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 270, top: 10),
                                width: 70,
                                height: 35,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Text(
                                    '750ML',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.black,
                                )),
                          ]),
                        ),
                      ]),
                    );
                  }),
            ),
          );
        });
  }
}
