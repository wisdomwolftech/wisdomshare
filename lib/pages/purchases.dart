

import 'package:flutter/material.dart';


class Purchases extends StatefulWidget {
  @override
  _Purchases createState() => new _Purchases();
}
class _Purchases extends State<Purchases> {
  List <Widget> cards = new List.generate(20, (i)=>new CustomCard());
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
            body: new Container(
              child: new ListView(
                children: cards,
              )

            )

        );

    }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
              return  new Card(
                elevation: 25.0,
                color: Colors.white,
                //Color.fromARGB(255, 0, 255, 0),
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child:Column(
               // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                       new Padding(
                        padding: new EdgeInsets.all(5.0),
                          child:Container(
                            alignment: Alignment(-1.0, 1.5),//mainAxisAlignment: MainAxisAlignment.start,
                            // child: new Row(
                             child:Container(
                              child: new CircleAvatar(
                  backgroundImage: new AssetImage("assets/profilepic.jpg"),radius: 25,//radius: 200,
                ),
               ),),),
                //new Padding(
                //               padding: new EdgeInsets.all(5.0),
                //                child: new IconButton(icon: new Icon(Icons.group_add,size: 40.0,),
                //                  alignment: Alignment(2.0, -1.5)   ,
                 //             onPressed: (){print('send friend request');},),),
                //),
                          //      child: new Center(child: new 
                      //    Text("Think And Grow Rich ",
                               //textScaleFactor:1,textAlign: TextAlign.center ,textDirection: TextDirection.ltr,
                        //      style: TextStyle(fontStyle: FontStyle.italic ,//fontSize: 22.0 ,
                       //       fontFamily: 'Trajan Pro', fontSize: 20.0,fontWeight: FontWeight.bold),),), 
                           // width: MediaQuery
                            //.of(context)
                           // .size
                           // .width,
                          //  height: 250.0,
                          //  decoration: BoxDecoration(
                          
                            Divider(height: 10,indent: 0,color: Colors.black,),
                        new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child:Container(
                            width: MediaQuery
                            .of(context)
                            .size
                            .width,
                            height: 250.0,
                            decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                                image:AssetImage("assets/profilepic.jpg",),),),),),
                        ExpansionTile(
                          leading: Icon(Icons.library_books),
  title: Text('Think and grow rich',
  style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 20.0 ,fontFamily: 'Trajan Pro', fontWeight: FontWeight.bold),),
  children: <Widget>[
     Text('Description:',textAlign: TextAlign.start,
     style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Trajan Pro',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),),
    Text('hdgdg dfgk dkg dfkgf dgkfd gkdf gkdf kdfgdfg dfgvddfdfndf dsgfdk gkfdjb jdkfhdhdvhhfjghfjhjshjgkhg hfgdgfdjfdjgfjdgfjdgfjdgjfg fjdgfjdgfdjgfjdgfjdgfjdgfjdfgdjgfjdgfjdgfjdgfjdgfjdfgdjfgjdgfjdgfjdf fjdgfjdgfjdgfjdgfjdgfjdfgjdgfjdgfjdfgjdgfjdf '),
   ],
                         ),  Divider(height: 10,indent: 0,color: Colors.grey,),
                        new Padding(
                          padding: new EdgeInsets.all(0.0), 
                      
                          child: new Row(
                            children: <Widget>[
                         //     new IconButton(icon: new Icon(Icons.search,size: 25.0,),
                          //   onPressed:(){}),
       //   showSearch(context: context,delegate: Articlesearch());//print('search start..,!');
       // },),
                    new IconButton(icon: new Icon(Icons.share,size: 25.0),
                      onPressed: (){
                             print('Alert Received...');},),
                             new Padding(
                               padding: new EdgeInsets.all(2.0),
                               child: new IconButton(icon: new Icon(Icons.favorite_border,size: 25.0,),
                               tooltip: 'Add to your favorites List',
                             //  alignment: Alignment(70, 0),
                               onPressed:(){
                                print('Added to favouriate...');
                                  },)),
                             
                            // new Padding(
                            //   padding: new EdgeInsets.all(7.0),
                            //   child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                           //  ),
               
                         //    new Padding(
                         //      padding: new EdgeInsets.all(0.0),
                         //       child: new IconButton(icon: new Icon(Icons.share,size: 25.0,),
                          //      tooltip: 'Share with your friends',
                          ///      alignment: Alignment(60, 0),
                          //    onPressed: (){print('Alert Received...');},),),
                            // new Padding(
                           //    padding: new EdgeInsets.all(7.0),
                          //     child: new Text('Share',style: new TextStyle(fontSize: 18.0)),
                          //   )
                        new Padding(
                               padding: new EdgeInsets.all(8.0),
                                child: new  RaisedButton(
            elevation: 2.0,
            color: Colors.yellowAccent,
            child: Text( "ADD TO CART" ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
           onPressed: () { print('Added to CART..');},
          ),),
          new Padding(
                               padding: new EdgeInsets.all(8.0),
                                child: Text( "Price: " ,
                                style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 15.0 ,fontFamily: 'Trajan Pro',fontWeight: FontWeight.bold,
                                color: Colors.red)
                                 ),), ],
                          )
                        )
                      ],
                    ),
                  );
  }
}
/*import 'package:flutter/material.dart';


class Purchases extends StatefulWidget {
  @override
  _Purchases createState() => new _Purchases();
}
class _Purchases extends State<Purchases> {
  @override
    Widget build(BuildContext context) {
       return  new Scaffold(
      body:
      SafeArea( left:true ,right: true,top: true,bottom: true,
        child: Stack(
          fit: StackFit.expand,
          children: [
            new Container(
              decoration: new BoxDecoration(color: Colors.grey))
            ],
              ),
            ),
                  
        );
       
  }}*/
   /* return  new Container( 
       margin: EdgeInsets.all(40),
       height: 300,
      child:new Center(
        child: ListView(
        scrollDirection: Axis.vertical,
       // child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Purchases",style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.adjust,size:90.0,)
          ],
              ),
            ),
                  
        );
       
  }}*/




/*import 'package:flutter/material.dart';

class Purchases extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("PURCHASES",style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.adjust,size:90.0,)
          ],
        ),
      )
    );
  }
}*/