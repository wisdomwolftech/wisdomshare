import 'package:flutter/material.dart';
import 'loginpage.dart';

class Launchscreen extends StatefulWidget {
  @override
  _Launchscreen createState() => new _Launchscreen();
}
class _Launchscreen extends State<Launchscreen> {
 @override
void initState(){
  super.initState();
  Future.delayed(Duration(seconds: 3),
  (){
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Loginpage(),),);
    },);
    }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body:Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 300.0, 0.0, 0.0),
                    child: Text('Wisdom',
                        style: TextStyle(
                            fontSize: 70.0, fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro')),
                  ),
                  Container(
                  padding: EdgeInsets.fromLTRB(16.0, 360.0, 0.0, 0.0),
                    child: Text('Share',
                        style: TextStyle(
                           fontSize: 70.0, fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(238.0, 350.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',
                            color: Colors.teal[500])),
                 )
                ],
              ),
            ),
            
            
        
          ]))); 
          
          }
}
        
        

