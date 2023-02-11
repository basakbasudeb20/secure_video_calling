import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:video_call/login.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyLogin(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Dont't Worry ",
            style: TextStyle(color: Colors.red, fontSize: 40),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "You Are Most Secure ",
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
          SizedBox(
            height: 100,
          ),
        ])),
      ),
    );
  }
}
