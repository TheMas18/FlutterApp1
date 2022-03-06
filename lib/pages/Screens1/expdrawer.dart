import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ExperiMent5.dart';
import '../experiment3.dart';
import '../experiment4.dart';
import '../login_page.dart';
import '../signup_page.dart';
import '../welcome_page.dart';

class ExpDrawer extends StatelessWidget {
  const ExpDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Hello Mayuresh',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.8),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  width: 3,
                  color: Colors.blue,
                ),
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/space.png'))),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.star_circle,
                color: Colors.lightGreenAccent[400]),
            title: Text(
              'Welcome',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomePage()))
            },
          ),
          ListTile(
            leading:
                Icon(CupertinoIcons.mail, color: Colors.lightGreenAccent[400]),
            title: Text(
              'Login',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()))
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.create,
                color: Colors.lightGreenAccent[400]),
            title: Text(
              'SignUp',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupPage()))
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_fill,
                color: Colors.lightGreenAccent[400]),
            title: Text(
              'Experiment No 3',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Experiment3()))
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_fill,
                color: Colors.lightGreenAccent[400]),
            title: Text(
              'Experiment No 4',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExperiMent4()))
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_fill,
                color: Colors.lightGreenAccent[400]),
            title: Text(
              'Experiment No 5',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[200],
              ),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Experiment5()))
            },
          ),
        ],
      ),
    );
  }
}
