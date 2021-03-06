// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfinalapp/pages/signup_page.dart';
import 'package:myfinalapp/pages/welcome_page.dart';
import 'package:myfinalapp/utils/routes.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 3,
                      color: Colors.blue,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(190),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WelcomePage()));
                        }, // Image tapped
                        child: Image.asset(
                          "assets/images/Glogo2.png",
                          fit: BoxFit.cover,
                          height: 140,
                          width: 140.0,
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Login Here",
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade100, width: 2.0),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade900, width: 2.0),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          hintText: "Enter Username",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Cannot be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade100, width: 2.0),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade300, width: 2.0),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Cannot be empty";
                          } else if (value.length < 6) {
                            return "Password Length Should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 25 : 30),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 200,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account? ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupPage()));
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    color: Colors.limeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
