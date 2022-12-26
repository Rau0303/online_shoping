import 'package:flutter/material.dart';
import 'package:online_shopping/screens/homePage.dart';
import 'package:online_shopping/screens/loginPageScreen.dart';
import 'package:online_shopping/screens/signUpPageScreen.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => loginPage(),
      '/signUp':(context) =>signUp(),
      '/home':(context) =>home(),
    },
  ));
}


