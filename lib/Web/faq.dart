import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:krib_website/Web/faq.dart';
import 'package:krib_website/Web/privacy.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:top_sheet/top_sheet.dart';

import 'contact.dart';
import 'download.dart';
import 'screen_1.dart';

class Faq extends StatefulWidget {

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> with TickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController animationController;

  Animation<Offset> textAnimation;
  AnimationController textAnimationController;
  Animation<double> textFadeAnimation;

  bool isShowing = false;
  final _formKey = GlobalKey<FormState>();
   @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    animation = Tween<Offset>(
      begin: Offset(0.0, -1),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    ));

    sta1();
  }

  sta1(){
    textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 900)
    );

    textAnimation = Tween<Offset>(
      begin: Offset(0.1, 0),
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
    // Don't forget to dispose the animation controller on class destruction
    animationController.dispose();
    super.dispose();
  }

  Widget mainScreen(){
    return Scaffold(
      body: GestureDetector(
        onTap: () async{
          if(animationController.isCompleted){
            await animationController.reverse();
            setState(() {
            if(isShowing){
              isShowing = !isShowing;
            }
          });
          }
        },
        child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff1f1f1f),
                  Color(0xff29323c)
                ]
              )
            ),
            child: Stack(
              children: [
                 SlideTransition(
                   position: animation,
                   child: Container(
                    height:  MediaQuery.of(context).size.height * 0.07 <= 40 ? 40 :  MediaQuery.of(context).size.height * 0.07,
                    //MediaQuery.of(context).size.height * 0.07
                    width: MediaQuery.of(context).size.width * 75,
                    color: Colors.white,
                    child: Row(
                      //mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, PageTransition(child: IntroSwitcher(), type: PageTransitionType.fade));
                          },
                          child: AutoSizeText("About", style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Times New Roman",
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                            softWrap: true,
                            ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, PageTransition(child: DownloadSwitcher(), type: PageTransitionType.fade));
                          },
                          child: AutoSizeText("Download", style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w300,
                            ),
                             softWrap: true,
                            ),
                        ),
                        TextButton(
                          onPressed: (){
                            //Navigator.push(context, PageTransition(child: Faq(), type: PageTransitionType.fade));
                          },
                          child: AutoSizeText("FAQ", style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w300,
                            ),
                             softWrap: true,
                            ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, PageTransition(child: PrivacySwitcher(), type: PageTransitionType.fade));
                          },
                          child: AutoSizeText("Privacy", style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w300,
                            ),
                             softWrap: true,
                            ),
                        ),
                       TextButton(
                         onPressed: (){
                           Navigator.push(context, PageTransition(child: ContactSwitcher(), type: PageTransitionType.fade));
                         },
                         child: AutoSizeText("Contact", style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w300,
                            ),
                             softWrap: true,
                            ),
                       ),
                      ]
                    ),
                  ),
                 ),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, right: MediaQuery.of(context).size.width * 0.022, top: 80),
                  child: SingleChildScrollView(
                    child: SlideTransition(
                      position: textAnimation,
                      child: FadeTransition(
                        opacity: textFadeAnimation,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText("FAQ", style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1
                            ),
                            ),

                            AutoSizeText(
                              "\nWho we are?",
                              style: TextStyle(
                                  color: Color(0xffbababa),
                                  fontSize: 32,
                                  letterSpacing: 1,
                                  fontFamily: "Times New Roman"
                                ),
                            ),
                                  AutoSizeText(
                                    "We are a newly formed social community. We believe that digital security is an essential aspect. If we have only verified users, then our dependence on AI and bots would reduce.",
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  letterSpacing: 1,
                                  fontFamily: "Times New Roman"
                                ),
                                maxLines: 3,
                                  ),

                                  AutoSizeText(
                                    "\nWhy Krib is created?",
                                    style: TextStyle(
                                      fontSize: 32,
                                      letterSpacing: 1,
                                      color: Color(0xffbababa),
                                      fontFamily: "Times New Roman",
                                    ),
                                  ),

                                    AutoSizeText(
                                      "Before we answer this question, please take a moment to think about how many fake users are there on other social media platforms. The answer is about 45%. Astonishing right; I know! To build a real community, we created KRIB.",
                                      style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 26,
                                  fontFamily: "Times New Roman"
                                ),
                                maxLines: 4,
                                    ),
                                  
                                  AutoSizeText(
                                    "\nWhat is the verification process?",
                                    style: TextStyle(
                                      fontSize: 32,
                                      letterSpacing: 1,
                                      color: Color(0xffbababa),
                                      fontFamily: "Times New Roman"
                                    ),
                                  ),

                                  AutoSizeText(
                                    "It is quite simple. While signing up, you need to enter your Name, Gender, and DOB as per your government ID. Then, you have to click and upload pictures of the front and backside of the ID. That’s it! Don’t worry, we will delete the picture of your ID as soon as you are verified.",
                                    style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  letterSpacing: 1,
                                  fontFamily: "Times New Roman"
                                ),
                                maxLines: 5,
                                  ),

                                  SizedBox(height: 40,)

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.width * 0.00,
                  child: isShowing ? Text('') : FlatButton(
                    child: Icon(Icons.menu, size: 35, color: Colors.white,),
                    onPressed: (){
                       setState(() {
                          isShowing = !isShowing;
                        });
                        animationController.forward();
                    },
                    ),
                    
                  ),

                 
                  
              ],
            ),
          ),
      ),
    );
  }


  Widget videoScreen(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01, top: MediaQuery.of(context).size.height * 0.01),
            child: AutoSizeText("version 1.0.0", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 28,
              fontStyle: FontStyle.italic,
              fontFamily: "playfair display",
              decoration: TextDecoration.none,
            ),
            maxLines: 1,
            ),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.height * 0.13),
              child: BorderedText(
                strokeWidth: 3.5,
                strokeColor: Colors.black,
                child: Text(
                  "KRIB",
                  style: TextStyle(
                    fontFamily: "Lovelo-LineLight",
                    fontSize: 200,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    letterSpacing: 1
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            color: Colors.white,
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width * 0.25,
            child: videoScreen(),
          ),
          Container(
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width * 0.75,
            child: mainScreen(),
          ),
        ],
      ),
    );
  }
}
