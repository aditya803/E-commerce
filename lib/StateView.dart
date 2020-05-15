import 'package:flutter/material.dart';
import 'package:ui_mvc/Horizontal.dart';
import 'package:ui_mvc/Top_Companies.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new ListView(
        children: <Widget>[
          //Padding
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Featured Jobs'),),

          //Horizontal List
          HorizontalList(),

          //Padding
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Top Companies'),),

          //Grid View
          Container(
            height: 320.0,
            child: TopCompanies(),
          )
        ],
      )
    );
  }
}