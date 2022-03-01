// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://sportshub.cbsistatic.com/i/2021/08/09/6e3315ce-cb47-42da-9b0a-41ef335f000e/dragon-ball-super-new-super-hero-movie-goku-toei-animation-1276890.jpg";
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent[400],
                ),
                accountName: Text("Mayuresh"),
                accountEmail: Text("abc@mail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                  color: Colors.lightGreenAccent[400]),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.lightGreenAccent[400]),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                  color: Colors.lightGreenAccent[400]),
              title: Text(
                'Email',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
