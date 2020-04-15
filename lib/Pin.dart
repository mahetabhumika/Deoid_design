import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
class Pin extends StatefulWidget {
  @override
  _PinState createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
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
                        padding: const EdgeInsets.only(top: 70),
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
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Text("Enter Master Pin",style:TextStyle(color:Colors.black54,fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: PinCodeTextField(
                   pinBoxRadius: 10,
                  keyboardType: TextInputType.number,
                  pinBoxBorderWidth: 1,
                  pinBoxWidth: 20,
                  pinBoxHeight: 20,
                  defaultBorderColor: Colors.pink,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
