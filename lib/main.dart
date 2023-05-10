import 'package:flutter/material.dart';
import 'package:widget_need/steper_widget.dart';
import 'package:widget_need/tab_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StepperWidget(),
      // home: TabBarWidget(),
    );
  }
}

