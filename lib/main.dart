import 'package:flutter/material.dart';
import 'package:widget_need/animated_switcher.dart';
import 'package:widget_need/challenge1.dart';
import 'package:widget_need/file_picker.dart';
import 'package:widget_need/qr_code.dart';
import 'package:widget_need/search_in_list.dart';
import 'package:widget_need/steper_widget.dart';
import 'package:widget_need/tab_bar_widget.dart';
import 'dropdown_search.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchInList(),
    );
  }
}

