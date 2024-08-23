import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thumps/Grapes.dart';
import 'package:thumps/Redwine.dart';
import 'package:thumps/Rosewine.dart';
import 'package:thumps/beercard.dart';
import 'package:thumps/login.dart';
import 'package:thumps/mixers.dart';
import 'package:thumps/profile.dart';
import 'package:thumps/signup.dart';
import 'package:thumps/spirits.dart';
import 'package:thumps/white.dart';

class thump extends StatefulWidget {
  const thump({super.key});

  @override
  State<thump> createState() => _thumpState();
}

class _thumpState extends State<thump> {
  List<dynamic> _wine = [];
  int _currentIndex = 0;

  void initState() {
    super.initState();
    _loaddata();
  }

  Future<void> _loaddata() async {
    String data = await rootBundle.loadString('assets/data.json');
    setState(() {
      _wine = jsonDecode(data);
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
            drawer: Drawer(
              backgroundColor: Colors.deepPurple[400],
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Column(children: [
                      Container(
                        width: 80,
                        margin: EdgeInsets.only(top: 40),
                        child: Icon(Icons.account_circle_outlined),
                      ),
                      Container(
                        child: Text("Welcome"),
                      )
                    ]),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            end: Alignment.topRight,
                            begin: Alignment.bottomLeft,
                            colors: [
                          Colors.deepOrange,
                          Colors.white,
                          Colors.lightGreenAccent
                        ])),
                  ),
                  ListTile(
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Text('Login/Logout'),
                    ),
                  ),
                  Divider(
                    color: Colors.black45,
                  ),
                  ListTile(
                    title: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signup(),
                              ));
                        },
                        child: Text('Signup/Signout')),
                  ),
                  Divider(color: Colors.black),
                  ListTile(
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      child: Text('Profile'),
                    ),
                  ),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 28, top: 30),
                      child: Text(
                        "Contact",
                        style:
                            TextStyle(color: Color.fromARGB(255, 91, 43, 186)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100, top: 30),
                      child: Text(
                        "Terms & Conditions",
                        style:
                            TextStyle(color: Color.fromARGB(255, 91, 43, 186)),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: _wine.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(children: [
                        Container(
                          height: 60,
                          width: 392,
                          color: Colors.amber[600],
                          child:
                              Image.asset(_wine[index]["image_gif"].toString()),
                        ),
                        Container(
                          height: 195,
                          width: double.infinity,
                          child: CarouselSlider.builder(
                            itemCount: _wine.length,
                            options: CarouselOptions(
                              autoPlay: false,
                              enlargeCenterPage: true,
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = 3;
                                });
                              },
                            ),
                            itemBuilder: (BuildContext context, int index,
                                int realIndex) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        _wine[index]["img1"].toString(),
                                        height: 200,
                                        width: 392,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          _wine[index]["img2"].toString(),
                                          height: 200,
                                          width: 392,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Image.asset(
                                        _wine[index]["img3"].toString(),
                                        height: 200,
                                        width: 392,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => red(),
                                          ));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Column(children: [
                                        Image.asset(
                                          _wine[index]["wine1"].toString(),
                                          height: 120,
                                          width: 325,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Container(
                                          child: Text(
                                            _wine[index]["text1"].toString(),
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => rose(),
                                          ));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            _wine[index]["wine2"].toString(),
                                            height: 120,
                                            width: 325,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                            child: Text(
                                              _wine[index]["text2"].toString(),
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => white(),
                                          ));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            _wine[index]["wine3"].toString(),
                                            height: 120,
                                            width: 325,
                                            fit: BoxFit.fitWidth,
                                          ),
                                          Container(
                                            child: Text(
                                              _wine[index]["text3".toString()],
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Grapes(),
                                          ));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            _wine[index]["wine4"].toString(),
                                            height: 120,
                                            width: 325,
                                            fit: BoxFit.fitHeight,
                                          ),
                                          Container(
                                            child: Text(
                                              _wine[index]["text4".toString()],
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(children: [
                            Container(
                                margin: EdgeInsets.only(left: 35, top: 20),
                                width: 150,
                                height: 55,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => spirits(),
                                          ));
                                    },
                                    child: Text(
                                      'SPIRITS',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue,
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 20, top: 20),
                                width: 150,
                                height: 55,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => spirits(),
                                          ));
                                    },
                                    child: Text(
                                      'WINES',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue,
                                )),
                          ]),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 35, top: 20),
                                width: 150,
                                height: 55,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => beerscard(),
                                          ));
                                    },
                                    child: Text(
                                      'BEERS',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue,
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 20, top: 20),
                                width: 150,
                                height: 55,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => mixers(),
                                          ));
                                    },
                                    child: Text(
                                      'MIXERS',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Container(
                                height: 130,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      _wine[index]["wine6"].toString(),
                                      height: 100,
                                      width: 325,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Container(
                                      child: Text(
                                        _wine[index]["text6".toString()],
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 130,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      _wine[index]["wine7"].toString(),
                                      height: 100,
                                      width: 325,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Container(
                                      child: Text(
                                        _wine[index]["text7"].toString(),
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    );
                  },
                )),
          );
        });
  }
}
