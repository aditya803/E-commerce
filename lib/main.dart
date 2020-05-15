import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:ui_mvc/StateView.dart';

void main() => runApp(MyApp());

class MyApp extends AppMVC {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI_MVC',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: View(),
    );
  }
}



