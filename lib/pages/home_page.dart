// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myfinalapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gadget Zone"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello World"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
