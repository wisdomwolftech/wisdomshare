

import 'package:flutter/material.dart';
import 'profiledetais.dart';

class Rentals extends StatefulWidget {
  @override
  _Rentals createState() => new _Rentals();
}
class _Rentals extends State<Rentals> {
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
              return Container(
                child: Card(
                margin: EdgeInsets.all(5.0),
                elevation: 25.0,
                color: Colors.white,
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:Column(
                      children: <Widget>[ 
                        new Padding(
                      padding: new EdgeInsets.all(6.0),
                        child:new Container(
                          ////margin: new EdgeInsets.symmetric(horizontal: 20.0),color: Colors.grey,
//child: Hero( tag: 'demo',//ContactName.ContactName,
                       child: new Row(
                         children: <Widget>[
                         Material(
                           child: InkWell(
                             onTap: (){
                          Navigator.of(context).pop();         
         Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Profiledetails('Profiledetails')));
                          //      Navigator.pushNamed(context, 'contactdetails/Contactdetails.ContactName}');
                             },
                             child: Container(  color: Colors.white,
                               child: Row(children: <Widget>[
                                 Container(
                                   width: 50,
                                   height: 50,
                                   decoration: new BoxDecoration(
                                     shape: BoxShape.circle,
                                     image: new DecorationImage(
                                       fit: BoxFit.fill,
                                         image:AssetImage("assets/profilepic.jpg")
                                       )
                                     )
                                   ),

                                   Container(margin: new EdgeInsets.symmetric(horizontal: 10.0),  color: Colors.white,
                                     child: Padding(
                                       padding: const EdgeInsets.all(1.0),
                                     child: new Text("HARI CHAKARI",textAlign: TextAlign.start,softWrap: true,
                 style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',color: Colors.blue,),),),),
                               ],

                               ),
                             ),
                             
                   // child: new Align(alignment: Alignment(-1.0, 1.5), child: new CircleAvatar(
                 // backgroundImage: new AssetImage("assets/profilepic.jpg"),radius: 25,)),
                 // new Align(alignment: Alignment.topRight, 
                //  child: new Text("HARI CHAKARI",textAlign: TextAlign.start,softWrap: true,
                // style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro'),),),
                 //new IconButton(icon: new Icon(Icons.group_add,size: 30.0,),color: Colors.blue,
                  //              alignment: Alignment(140.0, 1.0)   ,
                           //  onPressed: (){print('send friend request');},),
                        ),),],),),),
                            Divider(height: 10,indent: 0,color: Colors.black,),
                        new Padding(
                          padding: new EdgeInsets.all(20.0),
                          child:Container(
                            width:MediaQuery
                            .of(context)
                            .size
                            .width,//300,
                            height: 300.0,
                            decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                                image:AssetImage("assets/profilepic.jpg",),),),),),
                        ExpansionTile(
                          leading: Icon(Icons.library_books),
                          
                           //backgroundColor: Colors.grey,
  title: Text('Think and grow rich',
  
  style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 20.0 ,fontFamily: 'Trajan Pro', fontWeight: FontWeight.bold),),
  children: <Widget>[
    
     new Align(alignment: Alignment.topLeft,child:Text('Description:',textAlign: TextAlign.start,
     style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Trajan Pro',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),)),
    new Align(alignment: Alignment.topLeft,
    child:Text('hdgdg dfgk dkg dfkgf dgkfd gkdf gkdf kdfgdfg dfgvddfdfndf dsgfdk gkfdjb jdkfhdhdvhhfjghfjhjshjgkhg hfgdgfdjfdjgfjdgfjdgfjdgjfg fjdgfjdgfdjgfjdgfjdgfjdgfjdfgdjgfjdgfjdgfjdgfjdgfjdfgdjfgjdgfjdgfjdf fjdgfjdgfjdgfjdgfjdgfjdfgjdgfjdgfjdfgjdgfjdf ',
    textAlign: TextAlign.start,style: TextStyle( color: Colors.black,),)),
     new Align(alignment: Alignment.topLeft,
    child:Text('hdgdg dfgk dkg dfkgf dgkfd gkdf gkdf kdfgdfg dfgvddfdfndf dsgfdk gkfdjb jdkfhdhdvhhfjghfjhjshjgkhg hfgdgfdjfdjgfjdgfjdgfjdgjfg fjdgfjdgfdjgfjdgfjdgfjdgfjdfgdjgfjdgfjdgfjdgfjdgfjdfgdjfgjdgfjdgfjdf fjdgfjdgfjdgfjdgfjdgfjdfgjdgfjdgfjdfgjdgfjdf ',
    textAlign: TextAlign.start,style: TextStyle( color: Colors.black,),)),
     new Align(alignment: Alignment.topLeft,
    child:Text('hdgdg dfgk dkg dfkgf dgkfd gkdf gkdf kdfgdfg dfgvddfdfndf dsgfdk gkfdjb jdkfhdhdvhhfjghfjhjshjgkhg hfgdgfdjfdjgfjdgfjdgfjdgjfg fjdgfjdgfdjgfjdgfjdgfjdgfjdfgdjgfjdgfjdgfjdgfjdgfjdfgdjfgjdgfjdgfjdf fjdgfjdgfjdgfjdgfjdgfjdfgjdgfjdgfjdfgjdgfjdf ',
    textAlign: TextAlign.start,style: TextStyle( color: Colors.black,),)),
     new Align(alignment: Alignment.topLeft,)
   ],
),  Divider(height: 10,indent: 0,color: Colors.grey,),
                        new Padding(
                          padding: new EdgeInsets.all(0.0), 
                          child: new Row(
                            children: <Widget>[
                    new IconButton(icon: new Icon(Icons.share,size: 25.0),
                      onPressed: (){
                             print('Alert Received...');},),
                             new Padding(
                               padding: new EdgeInsets.all(2.0),
                               child: new IconButton(icon: new Icon(Icons.favorite_border,size: 25.0,),
                               tooltip: 'Add to your favorites List',
                               onPressed:(){
                                print('Added to favouriate...');
                                  },)),
                        new Padding(
                               padding: new EdgeInsets.all(8.0),
                                child: new  RaisedButton(
            elevation: 2.0,
            color: Colors.yellow,
            highlightColor: Colors.yellow[500],
            child: Text( "ADD TO CART",style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro') ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
           onPressed: () { print('Added to CART..');},
          ),),
          ///new Flexible(
            //  child:
           //    new Container(
           //     padding: new EdgeInsets.all(30.0),
           //   child: Text( "Price:FREE" ,textAlign: TextAlign.justify,  
            //   overflow: TextOverflow.clip,
           //   softWrap: true,
           //       style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 15.0 ,color: Colors.red,
           //       fontFamily: 'Trajan Pro',fontWeight: FontWeight.bold,),),),
          new Padding(
                               padding: new EdgeInsets.all(30.0),
                               child: Text( "Price:FREE" ,textAlign: TextAlign.justify, //overflow: TextOverflow.clip,softWrap: true,
                                style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 15.0 ,fontFamily: 'Trajan Pro',fontWeight: FontWeight.bold,
                              color: Colors.red)
                               ),
                                ), 
          
           ],
                          )
                        )
                      ],
                    ),
                  ));
  }
}