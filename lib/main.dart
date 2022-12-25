import 'package:flutter/material.dart';
import 'package:online_shopping/screens/loginPageScreen.dart';
import 'package:online_shopping/screens/signUpPageScreen.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => loginPage(),
      '/signUp':(context) =>signUp(),
    },
  ));
}


