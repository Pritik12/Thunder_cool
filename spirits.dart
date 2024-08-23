import 'package:flutter/material.dart';

class spirits extends StatefulWidget {
  const spirits({super.key});

  @override
  State<spirits> createState() => _spiritsState();
}

class _spiritsState extends State<spirits> {
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 0, top: 30, right: 280),
              child: Text(
                "SPIRITS",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 20),
                        height: 39,
                        width: 360,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text("INDIAN WHISKEY"),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 220),
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 20),
                    height: 39,
                    width: 360,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("GIN"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 285),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 20),
                    height: 39,
                    width: 360,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("LIQUEUR"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 255),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 20),
                    height: 39,
                    width: 360,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("RUM"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 275),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
