import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class MFaq extends StatefulWidget {

  @override
  _MFaqState createState() => _MFaqState();
}

class _MFaqState extends State<MFaq> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;
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
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff1f1f1f),
            //toolbarHeight: 60,
            elevation: 15,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
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
                        AutoSizeText("FAQ", style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Times New Roman",
                          fontWeight: FontWeight.w700,
                        ),
                        ),

                        AutoSizeText(
                          "\nWho we are?",
                          style: TextStyle(
                              color: Color(0xffbababa),
                              fontSize: 25,
                              fontFamily: "Times New Roman"
                            ),
                        ),
                              AutoSizeText(
                                "We are a newly formed social community. We believe that digital security is an essential aspect. If we have only verified users, then our dependence on AI and bots would reduce.",
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman"
                            ),
                            //maxLines: 7,
                              ),

                              AutoSizeText(
                                "\nWhy Krib is created?",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffbababa),
                                  fontFamily: "Times New Roman",
                                ),
                              ),

                                AutoSizeText(
                                  "Before we answer this question, please take a moment to think about how many fake users are there on other social media platforms. The answer is about 45%. Astonishing right; I know! To build a real community, we created KRIB.",
                                  style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman"
                            ),
                            //maxLines: 8,
                                ),
                              
                              AutoSizeText(
                                "\nWhat is the verification process?",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffbababa),
                                  fontFamily: "Times New Roman"
                                ),
                              ),

                              AutoSizeText(
                                "It is quite simple. While signing up, you need to enter your Name, Gender, and DOB as per your government ID. Then, you have to click and upload pictures of the front and backside of the ID. That’s it! Don’t worry, we will delete the picture of your ID as soon as you are verified.",
                                style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman"
                            ),
                            //maxLines: 9,
                              ),

                              SizedBox(height: 40,)


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