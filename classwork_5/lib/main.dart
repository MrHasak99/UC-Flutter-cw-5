import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var i1 = 1;

  var i2 = 1;

  var i3 = 1;

  void play() {
    i1 = Random().nextInt(3) + 1;
    i2 = Random().nextInt(3) + 1;
    i3 = Random().nextInt(3) + 1;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Center(
                  child: Text(
                "ROCK PAPER SCISSORS",
              ))),
          body: SafeArea(
              child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/imagesi_$i1.png"),
                    height: 175,
                    width: 175,
                  ),
                  Container(
                    child: Image.asset("assets/images/i_$i2.png"),
                    height: 175,
                    width: 175,
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  play();
                },
                child: Text("PLAY"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
              )
            ],
          )))),
    );
  }
}
