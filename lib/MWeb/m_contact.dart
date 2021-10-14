import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class MContact extends StatefulWidget {

  @override
  _MContactState createState() => _MContactState();
}

class _MContactState extends State<MContact>with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;
  final _formKey = GlobalKey<FormState>();
  Animation<Offset> textAnimation;
  AnimationController textAnimationController;
  Animation<double> textFadeAnimation;

  @override
  void initState(){
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );

    _animation = Tween<Offset>(
      begin: Offset(1,0),
      end: Offset(0,0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    sta1();
    super.initState();
  }

  sta1(){
    textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    textAnimation = Tween<Offset>(
      begin: Offset(0, 0.5),
      end: Offset(0,0),
    ).animate(textAnimationController);

    textFadeAnimation = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController, 
      curve: Curves.easeIn)
      );

    textAnimationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:  Color(0xff1f1f1f),
            //toolbarHeight: 60,
            elevation: 15,
            title: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: BorderedText(
                strokeWidth: 1.5,
                strokeColor: Colors.white,
                child: Text("KRIB", style: TextStyle(
                  fontFamily: "Lovelo-LineLight",
                  fontSize: 35,
                  color: Colors.white,
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
            ),
            actions: [
              
              IconButton(
                icon: Icon(Icons.menu_rounded, size: 40, color: Colors.white,),
                onPressed: (){
                  _animationController.forward();
                  
                },
              ),
              SizedBox(width: 20),
            ],
          ),

          body: Container(
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
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.03, MediaQuery.of(context).size.height * 0.03, MediaQuery.of(context).size.width * 0.03 , 0 ),
                child: SlideTransition(
                  position: textAnimation,
                  child: FadeTransition(
                    opacity: textFadeAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("CONTACT", style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Times New Roman",
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        ),

                        AutoSizeText(
                          "\nWe would love to talk to you and maybe we can become friends. Currently, we our reachable through e-mail only. Please use the link below to talk to us. Talk to you soon.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Times New Roman"
                          ),
                          
                        ),

                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                            child: FlatButton(
                              height: 50,
                              child: Text("Send", style: TextStyle(
                                fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                              ),
                              color: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              onPressed: (){
                                if(_formKey.currentState.validate()){
                                  print("Number sent");
                                  //send the number to our server
                                }
                              },
                            ),
                          )

                      ],
                    ),
                  ),
                ),
              ),
            ),

          ),
        ),

        Dashboard(
            animation: _animation,
            animationController: _animationController,
            // isAbout: true,
            // isContact: false,
            // isDownload: false,
            // isFaq: false,
            // isPrivacy: false,
            context: context,
          ),
      ],
    );
  }
}