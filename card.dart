/*import 'package:flutter/material.dart';
import 'dart:ui';

class Donations extends StatefulWidget {
  @override
  _Donations createState() => new _Donations();
}
class _Donations extends State<Donations> {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body:
        new Container(
              child: new ListView(
                children: cards,
              )
     /* SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            new Container(
              decoration: new BoxDecoration(color: Colors.grey),
              ////  image: new DecorationImage(
               //   image: AssetImage("assets/profilepic.jpg"),
               ////   fit: BoxFit.cover,
              //  ),
            //  ),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: new Container(
                  decoration:
                      new BoxDecoration(color: Colors.grey.withOpacity(0.0)),
                ),
              ),
            ),
            new //Center(
              //child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CardStack(
                    onCardChanged: (url) {
                      setState(() {
                       // imageUrl = url;
                      });
                    },
                  )
                ],
              ),
            //)
          ],
        ),
      ),
    );
    /*return  new Container(
      
       margin: EdgeInsets.all(40),
       height: 300,
      child:new Center(
        child: ListView(
        scrollDirection: Axis.vertical,
       // child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Donations",style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.cloud_download,size:90.0,)
          ],
              ),
            ),
                  
        );*/
       
  }}*/

class CardStack extends StatefulWidget {
final Function onCardChanged;
CardStack({this.onCardChanged});
@override
_CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> with SingleTickerProviderStateMixin {
   List cards = new List.generate(20, (i)=>new CustomCard());
var cards = [
 TouristCard(index: 0, imageUrl: "image1.jpeg"),
  TouristCard(index: 1, imageUrl: "image2.jpeg"),
  TouristCard(index: 2, imageUrl: "image3.jpeg"),
  TouristCard(index: 3, imageUrl: "image4.jpeg"),
  TouristCard(index: 4, imageUrl: "image1.jpeg"),
 TouristCard(index: 5, imageUrl: "image2.jpeg")
];
int currentIndex;
AnimationController controller;
CurvedAnimation curvedAnimation;
Animation<Offset> _translationAnim;
Animation<Offset> _moveAnim;
Animation<double> _scaleAnim;
@override
void initState() {
super.initState();
currentIndex = 0;
controller = AnimationController(
  vsync: this,
  duration: Duration(milliseconds: 150),
);
curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeOut);

_translationAnim = Tween(begin: Offset(0.0, 0.0), end: Offset(-1000.0, 0.0))
.animate(controller)
  ..addListener(() {
    setState(() {});
  });
_scaleAnim = Tween(begin: 0.965, end: 1.0).animate(curvedAnimation);
_moveAnim = Tween(begin: Offset(0.0, 0.05), end: Offset(0.0, 0.0))
.animate(curvedAnimation);
}

@override
Widget build(BuildContext context) {
  return Stack(
    overflow: Overflow.visible,
    children: cards.reversed.map((card) {
      if (cards.indexOf(card) <= 2) {
        return GestureDetector(
          onHorizontalDragEnd: _horizontalDragEnd,
          child: Transform.translate(
            offset: _getFlickTransformOffset(card),
            child: FractionalTranslation(
              translation: _getStackedCardOffset(card),
              child: Transform.scale(
                scale: _getStackedCardScale(card),
                child: Center(child: card),
              ),
            ),
          ),
        );
      } else {
        return Container();
      }
    }).toList());
}
Offset _getStackedCardOffset(TouristCard card) {
  int diff = card.index - currentIndex;
  if (card.index == currentIndex + 1) {
    return _moveAnim.value;
  } else if (diff > 0 && diff <= 2) {
    return Offset(0.0, 0.05 * diff);
  } else {
    return Offset(0.0, 0.0);
  }
}
double _getStackedCardScale(TouristCard card) {
  int diff = card.index - currentIndex;
  if (card.index == currentIndex) {
    return 1.0;
  } else if (card.index == currentIndex + 1) {
    return _scaleAnim.value;
  } else {
    return (1 - (0.035 * diff.abs()));
  }
}
Offset _getFlickTransformOffset(TouristCard card) {
  if (card.index == currentIndex) {
    return _translationAnim.value;
  }
  return Offset(0.0, 0.0);
}
void _horizontalDragEnd(DragEndDetails details) {
  if (details.primaryVelocity < 0) {
    // Swiped Right to Left
    controller.forward().whenComplete(() {
      setState(() {
        controller.reset();
        TouristCard removedCard = cards.removeAt(0);
        cards.add(removedCard);
        currentIndex = cards[0].index;
        if (widget.onCardChanged != null)
          widget.onCardChanged(cards[0].imageUrl);
      });
    });
   }
  }
}
class TouristCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  TouristCard({this.index, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    //TextStyle cardTitleStyle =
  //      Theme.of(context).textTheme.title.copyWith(fontSize: 24.0);
   // TextStyle cardSubtitleStyle = Theme.of(context)
   //     .textTheme
   //     .title
   //     .copyWith(fontSize: 20.0, color: Colors.grey);
   // TextStyle cardButtonStyle = Theme.of(context)
    //    .textTheme
   //     .title
   //     .copyWith(fontSize: 16.0, color: Colors.white);
    return Card(
       child: new Column(
                      children: <Widget>[
                        new Image.asset("assets/profilepic.jpg",scale: 5,),
                        //new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.thumb_up),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.favorite_border),
                             ),
                              new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('Favorites',style: new TextStyle(fontSize: 18.0)),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.comment),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('Comments',style: new TextStyle(fontSize: 18.0)),
                             )

                            ],
                          )
                        )
                      ],
                    ),
                  );
  }
}

      color:Colors.white ,
       
       // ListTile(
           // leading: Icon(Icons.album),
          //  title: Text('The Enchanted Nightingale'),
          //  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
        //  ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(children: [
          Image.asset("assets/profilepic.jpg",scale:5,),
         // actions: <Widget>[
           Divider(),
        new IconButton(icon: new Icon(Icons.favorite_border,size: 25.0,),
        onPressed:(){
          print('Added to favouriate...');
        },),
       // new IconButton(icon: new Icon(Icons.share,size: 25.0,),
       // onPressed:(){
       //   print('share the app...');
      //  },
       // ),
      //FractionalTranslation(
       //     translation: Offset(3, 0),
        //    child: FloatingActionButton(
         //     mini: true,
             // backgroundColor: Colors.grey,
         //     child: Icon(Icons.favorite_border,color: Colors.red,),
         ////     onPressed: () {},
            
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Tourist Spot",
              style: cardTitleStyle,textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Travel and Recreation",
              style: cardSubtitleStyle,
            ),
          ),
          RaisedButton(
            elevation: 2.0,
            color: Colors.yellowAccent,
            child: Text(
              "ADD TO CART",
              style: cardButtonStyle,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            onPressed: () {},
          )
        ]),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class Donations extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("DONATIONS",style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.cloud_download,size:90.0,)
          ],
        ),
      )
    );
  }
}*/