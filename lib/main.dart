import 'package:chatroom/global/global.dart';
import 'package:flutter/material.dart';

import 'bnbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Room',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Chat Room'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final TextEditingController teAccount = new TextEditingController();
    final TextEditingController tePassword = new TextEditingController();

    final OutlineInputBorder outlineInputBorder = new OutlineInputBorder(borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
    );
    final RoundedRectangleBorder rectangleBorder = new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0));
    return Scaffold(

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Welcome Chat', style: TextStyle(color: Colors.blue , fontSize: 24 ,fontWeight: FontWeight.bold ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 20 , right: 20),
                    margin: EdgeInsets.only(top: 2,bottom: 2),
                    child: TextField(controller: teAccount,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(hintText: 'account' , border: outlineInputBorder ,
                          contentPadding: EdgeInsets.only(left: 10 , right: 10),)
                    )
                    ,)
                  ,
                  Container(height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 20 , right: 20),
                    margin: EdgeInsets.only(top: 2,bottom: 2),
                  child: TextField(controller: tePassword,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(hintText: 'password' , border: outlineInputBorder ,
                          contentPadding: EdgeInsets.only(left: 10 , right: 10),)
                  )
                    ,)
                  ]
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(height: 40,
                  width: 150,
                  child: RaisedButton(shape: rectangleBorder,child : Text('Login') , onPressed: (){
                    test();
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => BnbarPage()));
                  },),
                  )
                ]
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}