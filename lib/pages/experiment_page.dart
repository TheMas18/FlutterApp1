// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfinalapp/pages/ExperiMent5.dart';
import 'package:myfinalapp/pages/experiment3.dart';
import 'package:myfinalapp/pages/experiment4.dart';
import 'package:myfinalapp/pages/login_page.dart';
import 'package:myfinalapp/pages/signup_page.dart';
import 'package:myfinalapp/pages/welcome_page.dart';

import 'Screens1/expdrawer.dart';

class ExperiMent extends StatelessWidget {
  const ExperiMent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'App Bar Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent.shade400,
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme().apply(bodyColor: Colors.white),
            ),
            child: PopupMenuButton<int>(
              color: Colors.indigo,
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Welcome'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('login'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('SignUp'),
                ),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.android_rounded),
                      const SizedBox(width: 8),
                      Text('Gadget Zone'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(children: [
        SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.blue.shade900,
            ),
          ),
          child: Text(
            "Name:- Mayuresh Anant Samant \nRoll No:- 45 \nPrn No:- 191051037",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(30.0),
            color: Colors.amber[600],
            width: 300.0,
            height: 55.0,
            child: Text(
              "Column Widget",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
        ),
        SizedBox(height: 2),
        const Image(
          width: 200,
          height: 200,
          image: NetworkImage(
              'https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter'),
        ),
        SizedBox(height: 30),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, //background color of button
                side: BorderSide(
                    width: 2, color: Colors.black), //border width and color
                elevation: 6, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(20) //content padding inside button
                ),
          ),
        ),
        SizedBox(height: 30),
        const Divider(
          height: 20,
          thickness: 2,
          indent: 40,
          endIndent: 40,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.purple,
              size: 30.0,
            ),
            Icon(
              Icons.add_call,
              color: Colors.blue,
              size: 36.0,
            ),
            Icon(
              Icons.add_location_alt_rounded,
              color: Colors.green,
              size: 36.0,
            ),
          ],
        ),
      ]),
      drawer: ExpDrawer(),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false,
        );
        break;
      case 3:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => SignupPage()),
          (route) => false,
        );
    }
  }
}
