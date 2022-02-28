// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myfinalapp/pages/home_page.dart';
import 'package:myfinalapp/pages/login_page.dart';
import 'package:myfinalapp/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (Context) => HomePage(),
        MyRoutes.loginRoute: (Context) => LoginPage(),
      },
    );
  }
}
