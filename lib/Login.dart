import 'package:flutter/material.dart';
import 'Register.dart';
import 'Pin.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2,
                width:MediaQuery.of(context).size.width,
                color: Colors.pink,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "asset/logo.png",
                        height: 60,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "DroidPass",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Card(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15, left: 10, right: 10),
                                child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  prefixIcon: Icon(Icons.mail),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 10, right: 10, bottom: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: RaisedButton(
                                    padding: EdgeInsets.only(left: 90, right: 90),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                    ),
                                    color: Colors.pink,
                                    child: Text("Login",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Pin()));
                                      });
                                    }),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text("Don't have an account?",style: TextStyle(color:Colors.black54,fontSize: 15),),
                                  ),
                                  FlatButton(
                                    onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                                    },
                                    child: Text("Create now",style: TextStyle(color:Colors.pink,fontSize: 15),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
          ],
          ),
        ),
      ),
    );
  }
}
