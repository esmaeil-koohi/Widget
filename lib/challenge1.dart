import 'package:flutter/material.dart';

class Challenge1 extends StatefulWidget {
  const Challenge1({Key? key}) : super(key: key);

  @override
  State<Challenge1> createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  List firstList = [1,2,3,4,5,6];
  List secondList = [1,2,3,12,20,150];

  @override
  Widget build(BuildContext context) {
    print(intToMin(val: 122));
    print(getDifference(firstList, secondList));
    print(getDifference2(firstList, secondList));
    return const Scaffold(
      body: Center(
        child: Text('In the name of God'),
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

  // challenge 2  The difference between the two lists
 List getDifference(var first, var second){
    List outPut = [];
    for(final element in first){
      if(!secondList.contains(element)){
        outPut.add(element);
      }
    }
    for(final element in second){
      if(!firstList.contains(element)){
        outPut.add(element);
      }
    }
    return outPut;
 }

 //challenge 2  In the second way
  List getDifference2(var first, var second){
    List outPut = [];
    outPut.addAll(first.where((element) => !second.contains(element)));
    outPut.addAll(second.where((element) => !first.contains(element)));
    return outPut;
  }



}
