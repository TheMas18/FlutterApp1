// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfinalapp/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(190),
                child: Image.asset(
                  "assets/images/img1.png",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 210.0,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Login Here",
                style: TextStyle(color: Colors.blue, fontSize: 60),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade300, width: 2.0),
                      ),
                      hintText: "Enter Username",
                      hintStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade300, width: 2.0),
                      ),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.blue[900],
                          primary: Colors.black, //background color of button
                          side: BorderSide(
                              width: 2,
                              color:
                                  Colors.blueAccent), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          padding:
                              EdgeInsets.all(20) //content padding inside button
                          ),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
