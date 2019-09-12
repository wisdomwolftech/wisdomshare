import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'dart:io';
//import 'package:image_picker/image_picker.dart';

import './loginpage.dart';
import './addresses.dart';
import './faqs.dart';
import './privacypolicy.dart';
import './settings.dart';
import './termsofservice.dart';
import './wisdompay.dart';
import './wishlist.dart';
import './youraccount.dart';
import './yourfavouriates.dart';
import './yourorders.dart';
import './rentals.dart'as rentals;
import './purchases.dart'as Purchases;
import './donations.dart'as Donations;
//import 'package:cloud_firestore/cloud_firestore.dart';


class HomePage extends StatefulWidget {

  //var cards = [];
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController controller;
  
  @override
  void initState(){
    controller = new TabController(vsync: this,length: 3);
    //Firestore.instance.collection('books').document()
   // .setData({ 'title': 'pride and prejudice', 'author': 'kishore' });
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    
 super.dispose();
  }
  String currentProfilePic = 'assets/profilepic.jpg';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.red[500]));
     // SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.teal));
    //Horizontallistview();
      return new Scaffold(
      appBar: new AppBar(
         backgroundColor: Colors.teal[500],
        title: new Center(child: new Text("WisdomShare",textScaleFactor:1,textAlign: TextAlign.center ,textDirection: TextDirection.ltr,
               style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 22.0 ,fontFamily: 'Trajan Pro', fontWeight: FontWeight.bold),),), 
      bottom: new TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.swap_vertical_circle),text: "RENTALS",),
          new Tab(icon: new Icon(Icons.adjust),text: "PURCHASES",),
           new Tab(icon: new Icon(Icons.cloud_download),text: "DONATIONS",)
           // new Tab(icon: new Icon(Icons.radio),)
        ],
      ),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.search,size: 25.0,),
        onPressed:(){
          showSearch(context: context,delegate: Articlesearch());//print('search start..,!');
        },),
         new IconButton(icon: new Icon(Icons.add_alert,size: 25.0),
        onPressed: (){
          print('Alert Received...');},),
         new IconButton(icon: new Icon(Icons.add_shopping_cart,size: 25.0,),
        onPressed: (){
          print('added to cart...');
        },),
      ],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("urharikishore@gmail.com",),
              accountName: new Text("HARI CHAKARI",
              style: TextStyle(fontStyle: FontStyle.italic ,fontSize: 20.0 ,fontFamily: 'Trajan Pro', fontWeight: FontWeight.bold),),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage(currentProfilePic),//radius: 200,
                ),
                onTap: () => print("This is your current account."),
              ),
              
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image:AssetImage('assets/coverpic.JPEG'), 
                  fit: BoxFit.fill
                ),boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.0, 2.0),
                  blurRadius: 1.0,
                ),],
              ),
            ),
            new ListTile(
              title: new Text("HOME"),
              leading: Icon(Icons.home),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()//"First Page")
                ));
              }
            ),
            new ListTile(
              title: new Text("WISDOM PAY"),
              leading: Icon(Icons.payment),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Wisdompay("WISDOM PAY")));
              }
            ),
            new ListTile(
              title: new Text("YOUR ORDERS"),
                leading: Icon(Icons.payment),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Yourorders("YOUR ORDERS")));
              }
            ),
            new ListTile(
              title: new Text("YOUR FAVOURITES"),
                leading: Icon(Icons.favorite_border),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Yourfavouriates("YOUR FAVOURITES")));
              }
            ),
            new ListTile(
              title: new Text("WISH LIST"),
              leading: Icon(Icons.local_library),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Wishlist("WISH LIST")));
              }
            ),
            new ListTile(
              title: new Text("YOUR ACCOUNT"),
              leading: Icon(Icons.perm_identity),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Youraccount("YOUR ACCOUNT")));
              }
            ),
            new ListTile(
              title: new Text("ADDRESSES"),
              leading: Icon(Icons.room),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Addresses("ADDRESSES")));
              }
            ),
            new ListTile(
              title: new Text("SETTINGS"),
              leading: Icon(Icons.settings),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Settings("SETTINGS")));
              }
            ),
             new Divider(),
            new ListTile(
              title: new Text("TERMS OF SERVICE "),
              leading: Icon(Icons.loyalty),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Termsofservices("TERMS OF SERVICE")));
              }
            ),
            new ListTile(
              title: new Text("PRIVACY POLICY"),
              leading: Icon(Icons.security),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Privacypolicy("PRIVACY POLICY")));
              }
            ),
new ListTile(
              title: new Text("FAQs"),
              leading: Icon(Icons.question_answer),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Faqs(" Frequestly asked Questions")));
              }
            ),
            new ListTile(
              title: new Text("HELP CENTER"),
               leading: Icon(Icons.help_outline),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Privacypolicy("PRIVACY POLICY")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("LOG OUT"),
                leading: Icon(Icons.power_settings_new),
              trailing: new Icon(Icons.cancel),
              //onTap: () => Navigator.pop(context),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Loginpage()));
              }
            ),
          ],
        ),
      ),
      body:
       /* new Container(
      width: 500.0,
      height: 130.0,
        decoration: new BoxDecoration(
                image: new DecorationImage(
                    image:AssetImage('assets/coverpic.JPEG'),
                  fit: BoxFit.fill
                ),
                 boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.0, 2.0),
                  blurRadius: 1.0,
                ),],),
              
               child: new Container(
                child: CircleAvatar(
                  backgroundImage: new AssetImage(currentProfilePic),
                    ),
                  margin: EdgeInsets.only(right: 280.0),
                  decoration: BoxDecoration( borderRadius: new BorderRadius.all(new Radius.circular(80.0),),
                  border: new Border.all(
                 color: Colors.white,
                 width: 4.0,),
                ),
        ), 
               ),
        */       
  new TabBarView(
        controller: controller,
        children: <Widget>[
          new rentals.Rentals(),
          new Purchases.Purchases(),
          new Donations.Donations()
        ],
      ),
               
   //bottomNavigationBar: new BottomAppBar(color: Color(0xFF4DB6AC),
   //   child:Container ( height: 30,
  //child: new Row(
   //  mainAxisAlignment: MainAxisAlignment.spaceAround,
   // children: <Widget>[
   //   IconButton(icon: Icon(Icons.home,size: 30.0,color: Color(0xFFFFFFFF),),onPressed: () {print('home..,!');}),
   //   IconButton(icon: Icon(Icons.search,size: 30.0,color: Color(0xFFFFFFFF),),onPressed: () {print('search.,!');}),
   //   IconButton(icon: Icon(Icons.chat,size: 30.0, color:Color(0xFFFFFFFF)),onPressed: () {print('chat box start..,!');}),
    //   IconButton(icon: Icon(Icons.book,size: 30.0,color:Color(0xFFFFFFFF)),onPressed: () {print('Your books..,!');}, )
  //  ],
  //),), ),
floatingActionButton: new FloatingActionButton(backgroundColor: Color(0xFF263238),elevation: 8.0,highlightElevation: 100,
 shape: CircleBorder(side: BorderSide(color: Colors.teal[500], width: 4.0)),
 //shape: CircleBorder(side: BorderSide(width:20.0, color: const Color(0x009688),),),
  child: Icon(Icons. photo_camera,size:30.0,),
  onPressed: () {},),
floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked);
    //return scaffold;


    
  }
}

class Articlesearch extends SearchDelegate<Articlesearch>{
  @override
  List<Widget> buildActions(BuildContext context) {
     return[
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: (){
         query='' ;
        },),];
  }

  @override
  Widget buildLeading(BuildContext context) {
    
    return
      IconButton(
        icon:Icon(Icons.arrow_back),
        onPressed: (){
          close(context, null);
        },);
  }

  @override
  Widget buildResults(BuildContext context) {
    
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    
    return Text(query);
  }
  
}

