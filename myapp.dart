import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _itemCount = 0;

  void increaseCount() {
    setState(() {
      _itemCount++;
    });
  }

  void decreaseCount() {
    setState(() {
      if (_itemCount > 0) {
        _itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Product 1'),
            subtitle: Text('\$10.00'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: decreaseCount,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  '$_itemCount',
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: increaseCount,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Do something with the count
          print('Item Count: $_itemCount');
        },
        label: Text('Go to Cart'),
        icon: Icon(Icons.shopping_cart),
      ),
    );
  }
}
