import 'package:flutter/material.dart';


//class Addresses extends StatelessWidget {

  //final String title;

 // Addresses(this.title);

  class Addresses extends StatefulWidget {
  Addresses(String s);

  @override
  _Addresses createState() => new _Addresses();
}
class _Addresses extends State<Addresses> {
  String currentProfilePic = 'assets/profilepic.jpg';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
     automaticallyImplyLeading: true,
     title: new Text('ADDRESSES'), backgroundColor: Colors.teal[500],
     ///   leading: IconButton(icon:Icon(Icons.arrow_back),
     //   onPressed:() => Navigator.pop(context, false)),
     ),
      
      body: new Center(
        child: new Text('ADDRESSES'),
      ),
    );
  }
}