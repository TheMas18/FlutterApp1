// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfinalapp/pages/home_page.dart';
import 'package:myfinalapp/pages/login_page.dart';

class ExperiMent extends StatelessWidget {
  const ExperiMent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/img1.png'))),
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text('Home'),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Login'),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('SignUpPage'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}
