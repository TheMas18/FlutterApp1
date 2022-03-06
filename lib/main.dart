// ignore_for_file: unused_import, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myfinalapp/pages/ExperiMent5.dart';
import 'package:myfinalapp/pages/experiment3.dart';
import 'package:myfinalapp/pages/experiment4.dart';
import 'package:myfinalapp/pages/experiment_page.dart';
import 'package:myfinalapp/pages/home_page.dart';
import 'package:myfinalapp/pages/login_page.dart';
import 'package:myfinalapp/pages/signup_page.dart';
import 'package:myfinalapp/pages/welcome_page.dart';
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
        "/": (context) => ExperiMent(),
        MyRoutes.homeRoute: (Context) => HomePage(),
        MyRoutes.loginRoute: (Context) => LoginPage(),
        MyRoutes.SignupRoute: (Context) => SignupPage(),
        MyRoutes.exp5Route: (Context) => Experiment5(),
        MyRoutes.exp3Route: (Context) => Experiment3(),
        MyRoutes.exp4Route: (Context) => ExperiMent4(),
      },
    );
  }
}
