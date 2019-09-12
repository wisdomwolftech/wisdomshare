import 'package:flutter/material.dart';

class Yourfavouriates extends StatelessWidget {

  final String title;

  Yourfavouriates(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title), backgroundColor: Colors.teal[500],),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}