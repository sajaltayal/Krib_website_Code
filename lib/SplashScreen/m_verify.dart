import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MVerify extends StatefulWidget {

  @override
  _MVerifyState createState() => _MVerifyState();
}

class _MVerifyState extends State<MVerify> {
  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff1f1f1f),
                Color(0xff29323c),
              ]
            )
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, MediaQuery.of(context).size.height * 0.3, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BorderedText(
                    strokeWidth: 1.5,
                    strokeColor: Colors.white,
                    child: Text("KRIB", style: TextStyle(
                      fontFamily: "Lovelo-LineLight",
                      fontSize: 65,
                      color: Colors.white,
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(0,0),
                          blurRadius: 10,
                          
                        )
                      ]
                    ),
                    
                    ),
                    
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                    child: AutoSizeText(
                      "A safe and identity verified users-only social media platform",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 26,
                        color: Colors.white,
                        letterSpacing: 2,
                        
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ButtonTheme(
                        minWidth: 260,
                        child: RaisedButton(
                          
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.025, horizontal: MediaQuery.of(context).size.width * 0.04),
                          child: AutoSizeText("Nah! Doesn't matter",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              letterSpacing: 2
                            ),
                            ),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),

                            onPressed: (){
                              Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
                            },
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),

                      ButtonTheme(
                        minWidth: 260,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.025, horizontal: MediaQuery.of(context).size.width * 0.04),
                          child: AutoSizeText("Ok! Tell me more",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              letterSpacing: 2
                            ),
                            ),
                            color: Colors.lightGreenAccent[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),

                            onPressed: (){
                              Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
                            },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}