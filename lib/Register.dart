import 'package:flutter/material.dart';
import 'package:design1/Login.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3,
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
            Container(
              height: MediaQuery.of(context).size.height/2,
              width:MediaQuery.of(context).size.width,
              color: Colors.white,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Divider(color:Colors.green,endIndent:15,indent:15,thickness: 5,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80,top:20),
                    child: Text("Create Your Account",style: TextStyle(color: Colors.black54,fontSize: 25),),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 15, left: 25, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20)),
                        ),
                        color: Colors.pink,
                        child: Text("Create My Account",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          });
                        }),
                  ),
                  Row(

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 40,),
                        child: Text("Already have an account?",style: TextStyle(color:Colors.black54,fontSize: 15),),
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text("Sign in",style: TextStyle(color:Colors.pink,fontSize: 15),),
                      )
                    ],
                  )
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
