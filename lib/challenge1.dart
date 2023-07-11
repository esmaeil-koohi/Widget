import 'package:flutter/material.dart';

class Challenge1 extends StatefulWidget {
  const Challenge1({Key? key}) : super(key: key);

  @override
  State<Challenge1> createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  @override
  Widget build(BuildContext context) {
    print(intToMin(val: 122));
    return Scaffold(
      body: Center(
        child: Text(''),
      ),
    );
  }

  // Challenge 1
  String intToMin({required int val}){
    int min = val ~/ 60;
    int seconds = val % 60;
    String result = min.toString().padLeft(2, "0") + " : " + seconds.toString().padLeft(2,"0");
    return '$result';
  }





}
