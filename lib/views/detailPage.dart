import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final video;
  //constructor
  DetailPage(this.video);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(video["name"]),
      ),
      body: new Center(
        child: new Text("blah blah blah"),
      ),
    );
  }
}