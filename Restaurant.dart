import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thumps/bar2.dart';
import 'package:thumps/bar3.dart';
import 'package:thumps/bar4.dart';
import 'package:thumps/meenabar.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  List<dynamic> _Receive = [];
  List<bool> _isFavorite = [];

  @override
  void initState() {
    super.initState();
    _loaddata();
  }

  Future<void> _loaddata() async {
    String data = await rootBundle.loadString("assets/receive.json");
    setState(() {
      _Receive = jsonDecode(data);
      _isFavorite = List<bool>.filled(_Receive.length, true);
    });
  }

  void _toggleFavorite(int index) {
    setState(() {
      _isFavorite[index] = !_isFavorite[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loaddata(),
        builder: (context, snapshot) {
          return Scaffold(
            body: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.amber,
              child: ListView.builder(
                itemCount: _Receive.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                        child: Column(children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                suffixIcon: Icon(Icons.search),
                                hintText: "Search here..."),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bar1(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Container(
                            height: 280,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Column(children: [
                              Image.network(
                                _Receive[index]["id"].toString(),
                                height: 200,
                                width: 325,
                                fit: BoxFit.fitWidth,
                              ),
                              Row(children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        right: 50, top: 0, left: 15),
                                    child: Text(
                                      _Receive[index]["text"].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(Icons.star, color: Colors.green),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(Icons.star_border),
                                )
                              ]),
                              Row(children: [
                                Container(
                                  margin: EdgeInsets.only(right: 0, left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7, top: 3),
                                  child: Text(
                                    _Receive[index]["text1"].toString(),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: Icon(
                                      _isFavorite[index]
                                          ? Icons.favorite
                                          : Icons.favorite,
                                      color: _isFavorite[index]
                                          ? Colors.red
                                          : null,
                                    ),
                                    onPressed: () {
                                      _toggleFavorite(index);
                                    },
                                  ),
                                )
                              ]),
                            ]),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bar2(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 280,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.network(
                                  _Receive[index]["id1"].toString(),
                                  height: 200,
                                  width: 325,
                                  fit: BoxFit.fitWidth,
                                ),
                                Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          right: 10, top: 0, left: 15),
                                      child: Text(
                                        _Receive[index]["text11"].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child:
                                        Icon(Icons.star, color: Colors.green),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: Icon(Icons.star_border),
                                  )
                                ]),
                                Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 0, left: 10),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 7, top: 3),
                                    child: Text(
                                      _Receive[index]["text12"].toString(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    child: IconButton(
                                      icon: Icon(
                                        _isFavorite[index]
                                            ? Icons.favorite
                                            : Icons.favorite,
                                        color: _isFavorite[index]
                                            ? Colors.red
                                            : null,
                                      ),
                                      onPressed: () {
                                        _toggleFavorite(index);
                                      },
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bar3(),
                              ));
                        },
                        child: Container(
                          height: 280,
                          width: 320,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(children: [
                            Image.network(
                              _Receive[index]["id2"].toString(),
                              height: 200,
                              width: 325,
                              fit: BoxFit.fitWidth,
                            ),
                            Row(children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      right: 10, top: 0, left: 15),
                                  child: Text(
                                    _Receive[index]["text21"].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  )),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Icon(Icons.star, color: Colors.green),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Icon(Icons.star_border),
                              )
                            ]),
                            Row(children: [
                              Container(
                                margin: EdgeInsets.only(right: 0, left: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7, top: 3),
                                child: Text(
                                  _Receive[index]["text22"].toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    _isFavorite[index]
                                        ? Icons.favorite
                                        : Icons.favorite,
                                    color:
                                        _isFavorite[index] ? Colors.red : null,
                                  ),
                                  onPressed: () {
                                    _toggleFavorite(index);
                                  },
                                ),
                              )
                            ]),
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bar4(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 280,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Column(children: [
                              Image.network(
                                _Receive[index]["id3"].toString(),
                                height: 200,
                                width: 325,
                                fit: BoxFit.fitWidth,
                              ),
                              Row(children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        right: 10, top: 0, left: 15),
                                    child: Text(
                                      _Receive[index]["text31"].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(Icons.star, color: Colors.green),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  child: Icon(Icons.star_border),
                                )
                              ]),
                              Row(children: [
                                Container(
                                  margin: EdgeInsets.only(right: 0, left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 7, top: 3),
                                  child: Text(
                                    _Receive[index]["text32"].toString(),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: Icon(
                                      _isFavorite[index]
                                          ? Icons.favorite
                                          : Icons.favorite,
                                      color: _isFavorite[index]
                                          ? Colors.red
                                          : null,
                                    ),
                                    onPressed: () {
                                      _toggleFavorite(index);
                                    },
                                  ),
                                )
                              ]),
                            ]),
                          ),
                        ),
                      )
                    ])),
                  );
                },
              ),
            ),
          );
        });
  }
}
