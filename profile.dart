import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showSaveConfirmation(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profile saved successfully!'),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 120, right: 30),
                  child: Icon(
                    Icons.circle,
                    color: Colors.grey[350],
                    size: 60,
                  ),
                  foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7U_ef87Q7CQ1Fx_khkPq-y9IfPmBWrMZ6ig&usqp=CAU",
                          ),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, right: 32),
                  child: Text(
                    "Profile Photo",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Column(children: [
                  Container(
                    height: 60,
                    width: 360,
                    margin: EdgeInsets.only(top: 30),
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 360,
                    margin: EdgeInsets.only(top: 30),
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last name",
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                  height: 60,
                  width: 360,
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Address",
                        hintStyle: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 360,
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pin Code",
                        hintStyle: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 360,
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "City",
                        hintStyle: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      _showSaveConfirmation(context); // Pass context here
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightGreenAccent,
    );
  }
}
