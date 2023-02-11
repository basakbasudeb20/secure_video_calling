import 'package:flutter/material.dart';
import 'package:video_call/home.dart';
import 'package:video_call/login.dart';
import 'package:video_call/spalash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {"login": (context) => MyLogin(), "home": (context) => MyHome()},
    home: SpalashScreen(),
    //initialRoute: "login",
  ));
}
