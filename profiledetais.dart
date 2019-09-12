
import 'package:flutter/material.dart';
import 'home_page.dart';

class Profiledetails extends StatelessWidget {

  final String title;

  Profiledetails(this.title);
  @override
  Widget build(BuildContext context) {
    return  new 
   // Transform.scale(
  //scale: 0.5,
  ////origin: Offset(50.0, 50.0),
  //child: Container(
   // child:
     Card(margin: EdgeInsetsDirectional.fromSTEB(10,50,10,80),
              elevation: 25.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: new Column(
                            children: <Widget>[
                    new IconButton(icon: new Icon(Icons.close,size: 25.0),alignment: Alignment.topRight ,
                      onPressed: (){
                   //      Navigator.of(context).pop(true);
     Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));  },),  
         Divider(height: 10,indent: 0,color: Colors.black,),
         
      Container( 
         margin: EdgeInsetsDirectional.fromSTEB(10,20,10,30),//color: Colors.grey,
          width:MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                    height: 300.0,
                                                    decoration: new BoxDecoration(
                                                    //  border: Border.all(width: 5.0, color: Colors.teal,),
                      borderRadius: BorderRadius.circular(10),
                                                 color: Colors.white,
                                                      //shape: BoxShape.circle,
                                                      image: new DecorationImage(
                                                        fit: BoxFit.fill,
           image:AssetImage("assets/profilepic.jpg"),),), ),
          Container(margin:EdgeInsetsDirectional.fromSTEB(10,20,10,230),
           color: Colors.white,
                                     child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                     child: new Text("HARI CHAKARI",textAlign: TextAlign.start,softWrap: true,
                 style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',color: Colors.black,),),),),
         //   new Text( "HARI CHAKARI " ,textAlign: TextAlign.center, //overflow: TextOverflow.clip,softWrap: true,
          //                      style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 15.0 ,fontFamily: 'Trajan Pro',fontWeight: FontWeight.bold,
           //                   color: Colors.red),),
    Divider(height: 10,indent: 0,color: Colors.black,),
   ],
       
    )); }  
       
}
