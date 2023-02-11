import 'package:flutter/material.dart';
import 'package:video_call/call.dart';
import 'package:video_call/main.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Dont't Worry ",
            style: TextStyle(color: Colors.blueAccent, fontSize: 40),
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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyCall(callID: "1")));
            },
            child: Text(
              "Join Call",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ])),
      ),
    );
  }
}
