import 'package:flutter/material.dart';
import 'package:online_shopping/screens/loginPageScreen.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => loginPage(),
    },
  ));
}


