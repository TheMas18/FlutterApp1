// ignore_for_file: unused_import, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myfinalapp/pages/experiment_page.dart';
import 'package:myfinalapp/pages/home_page.dart';
import 'package:myfinalapp/pages/login_page.dart';
import 'package:myfinalapp/utils/routes.dart';
import 'package:myfinalapp/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (Context) => HomePage(),
        MyRoutes.loginRoute: (Context) => LoginPage(),
      },
    );
  }
}
