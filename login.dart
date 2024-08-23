import 'package:flutter/material.dart';
import 'package:thumps/bottom.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isEmailValid = true;
  bool _isPasswordValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 140),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          Container()
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 636,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    children: [
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
                          obscureText: true,
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
                            "Login",
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        ),
                      )
                    ],
                  ),
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
      _isEmailValid = _emailController.text.isNotEmpty;
      _isPasswordValid = _passwordController.text.isNotEmpty;

      if (_isEmailValid && _isPasswordValid) {
        String email = _emailController.text;
        String password = _passwordController.text;

        if (email == "12pritikchaudhari@gmail.com" && password == "Pratik") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => bottom()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Invalid email or password"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
