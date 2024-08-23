import 'package:flutter/material.dart';
import 'package:thumps/bottom.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isNameValid = true;
  bool _isEmailValid = true;
  bool _isPasswordValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context, bottom());
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 140),
                    child: Center(
                      child: Row(children: [
                        Container(
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => bottom(),
                                ));
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 34, color: Colors.blueAccent[400]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Container(
                  height: 636,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.black),
                          errorText: _isNameValid ? null : 'Invalid name',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.black),
                          errorText: _isEmailValid ? null : 'Invalid email',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black),
                          errorText:
                              _isPasswordValid ? null : 'Invalid password',
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 220,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _validateInputs();
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateInputs() {
    setState(() {
      _isNameValid = _nameController.text.isNotEmpty;
      _isEmailValid = _isEmailValidRegex(_emailController.text);
      _isPasswordValid = _isPasswordValidRegex(_passwordController.text);
      if (_isNameValid && _isEmailValid && _isPasswordValid) {}
    });
  }

  bool _isEmailValidRegex(String email) {
    String emailRegex = '12pritikchaudhari@gmail.com';
    return RegExp(emailRegex).hasMatch(email);
  }

  bool _isPasswordValidRegex(String Password) {
    String PasswordRegex = "Pritik@1998";
    return RegExp(PasswordRegex).hasMatch(Password);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
