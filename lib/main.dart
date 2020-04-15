import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'Register.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
            ),

              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Image.asset(
                      "asset/logo.png",
                      height: 80,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "DroidPass",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  )
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: RaisedButton(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      color: Colors.deepOrange,
                      child: Text("SIGN UP",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));}),
                ),
                RaisedButton(
                    padding: EdgeInsets.only(left: 80, right: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    color: Colors.grey,
                    child:
                        Text("SIGN IN", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}






