import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      home: LoginPage(),
    );
  }
}
