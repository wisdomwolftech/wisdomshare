import 'package:flutter/material.dart';
import 'home_page.dart';
//import 'package:firebase_auth/firebase_auth.dart';


class Loginpage extends StatefulWidget {
  
  @override
  _Loginpagestate createState() => new _Loginpagestate();
}

class _Loginpagestate extends State<Loginpage> {
  final myController = TextEditingController();
 /*String phoneNo;
  String smsCode;
  String verificationId;
 
  Future<void> verifyPhone() async {
  final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
  this.verificationId = verId;
};

final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
  this.verificationId = verId;
  //smsCodeDialog(context).then((value) {
   // print('Signed in');
  //});
};

final PhoneVerificationCompleted verifiedSuccess = (FirebaseUser user) {
 setState(() {
          print('Inside _sendCodeToPhoneNumber: signInWithPhoneNumber auto succeeded: $user');
      });
};

final PhoneVerificationFailed veriFailed = (AuthException exception) {
  print('${exception.message}');
};

await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: this.phoneNo,
    codeAutoRetrievalTimeout: autoRetrieve,
    codeSent: smsCodeSent,
    timeout: const Duration(seconds: 5),
    verificationCompleted: verifiedSuccess,
    verificationFailed: veriFailed);
}

  Future<bool> smCodeDialog(BuildContext context){
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context){
      return new AlertDialog(
        title: Text('Enter SMS code'),
        contentPadding: EdgeInsets.all(10.0),
        actions: <Widget>[
          new FlatButton(
            child: Text('Done'),
            onPressed: (){
              FirebaseAuth.instance.currentUser().then(user){
                if (user != null){
                  Navigator.of(context).pop();
                  Navigator.of(context).PushReplacementNamed('/homepage');
                }
                else {
                  Navigator.of(context).pop();
                  SignIn();

                }
              };
            },
          )
        ],
      );
    } );
    }

    signIn(){
      FirebaseAuth.instance
      .SignInPhonenumber(verificationId:verificationId,smsCode:smsCode)
      .then(user){
         Navigator.of(context).PushReplacementNamed('/homepage');
      }
      .catchError((e){
        print(e);
      });
    }
*/
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                    child: Text('Wisdom',
                        style: TextStyle(
                            fontSize: 70.0, fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro')),
                  ),
                  Container(
                  padding: EdgeInsets.fromLTRB(16.0, 160.0, 0.0, 0.0),
                    child: Text('Share',
                        style: TextStyle(
                           fontSize: 70.0, fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(238.0, 155.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',
                            color: Colors.teal[500])),
                 )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField( controller: myController,//obscureText: true,
                    maxLength: 10,maxLengthEnforced: true,
                   // style: ,
                           keyboardType:TextInputType.numberWithOptions(signed: false,decimal: false),
                      decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal[500]))),
                    ),
                    //SizedBox(height: 20.0),
                   // TextField(
                   //   decoration: InputDecoration(
                    //      labelText: 'PASSWORD',
                    //      labelStyle: TextStyle(
                    //          fontFamily: 'Montserrat',
                     //         fontWeight: FontWeight.bold,
                     //         color: Colors.grey),
                     //     focusedBorder: UnderlineInputBorder(
                      //        borderSide: BorderSide(color: Colors.green))),
                     // obscureText: true,
                  //  ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 300.0),
                      child: InkWell(
                        child: Text(
                          'Help ?',
                          style: TextStyle(
                              color: Colors.teal[500],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Trajan Pro',//fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 80.0),
                    Container(
                      height: 60.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.teal[500],
                        color: Colors.teal[500],
                        elevation: 7.0,
                        child: GestureDetector(
                         onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                  },
                          child: Center(
                            child: Text(
                              'Receive SMS Code',
                              style: TextStyle(fontSize:20 ,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',
                                  //fontFamily: 'Montserrat'
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
              new Flexible(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                  "Please note that By sellecting receive SMS code,You are agreeing to",
                  // Terms and conditions and the privacy policyof wisdomshare",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro'),),
                  SizedBox(width: 5.0),
                InkWell(
                  onTap: () { 
                    showDialog(
                      context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child:
               AlertDialog(
                title: Text('Privacy Policy and Terms of Service'),backgroundColor: Colors.teal,
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                      Text('It is important that you read our Privacy Policy, so that you fully understand the terms involved in your subscribing to our service, and how we use the personal informationyou submit. As we update and expand our services, this policy may change, so werecommend that you refer to it periodically'),
                  ],
                  ),
                  ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Close',  
                    style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,fontFamily: 'Trajan Pro',color: Colors.black),),
                    onPressed: () {
                      SimplePermissions.openSettings();
                                                                  Navigator.of(context).pop();
                                                                },
                                                              )
                                                            ],
                                                          )
                                                      );
                                                    }
                                              //context: context,
                                             // barrierDismissible: true,
                                             //   builder: (_) => Material(type: MaterialType.transparency,
                                             //     child: Center( // Aligns the container to center
                                             //         child: Container( // A simplified version of dialog.
                                             //           width: 100.0,
                                             ///           height: 56.0,
                                              //          color: Colors.white,
                                              //          child: Text('jojo'),
                                              //        )
                                             //     ),
                                             //   )
                                            );
                                                          //      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                                                              },
                                                              child: Text(
                                                                'Terms and conditions and the privacy policy of wisdomshare',
                                                                style: TextStyle(
                                                                    color: Colors.teal[500],
                                                                    fontFamily: 'Montserrat',
                                                                    fontWeight: FontWeight.bold,
                                                                    decoration: TextDecoration.underline),
                                                              ),
                                                            )],
                                                            ),
                                                          ),
                                                        ]),  
                                                        ]),  
                                                        )
                                                    
                                                      ]));
                                              }
                                            }
                                            
                                            class SimplePermissions {
                        static void openSettings() {}
}
        
        

