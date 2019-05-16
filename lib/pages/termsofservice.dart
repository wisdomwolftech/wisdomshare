
//Terms and conditions of service and privacy policy page 

import 'package:flutter/material.dart';

class Termsofservices extends StatelessWidget {

  final String title;

  Termsofservices(this.title);

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