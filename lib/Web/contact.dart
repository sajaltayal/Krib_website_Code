import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:krib_website/Web/faq.dart';
import 'package:krib_website/Web/privacy.dart';
import 'package:page_transition/page_transition.dart';
import 'package:top_sheet/top_sheet.dart';

import 'download.dart';
import 'screen_1.dart';

class Contact extends StatefulWidget {

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> with TickerProviderStateMixin {
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

  @override
  void dispose() {
    // Don't forget to dispose the animation controller on class destruction
    animationController.dispose();
    super.dispose();
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
                            Navigator.push(context, PageTransition(child: FaqSwitcher(), type: PageTransitionType.fade));
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
                           //Navigator.push(context, PageTransition(child: Contact(), type: PageTransitionType.fade));
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
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, right: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.3),
                  child: SingleChildScrollView(
                    child: SlideTransition(
                      position: textAnimation,
                      child: FadeTransition(
                        opacity: textFadeAnimation,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText("CONTACT", style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1
                            ),
                            maxLines: 1,
                            ),

                            AutoSizeText.rich(
                              TextSpan(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: "Times New Roman",
                                  letterSpacing: 1
                                ),
                               text: "\nWe would love to talk to you and maybe we can become friends. Currently, we our reachable through e-mail only. Please use the link below to talk to us. Talk to you soon."
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
                    letterSpacing: 1,
                    decoration: TextDecoration.none,
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

class TopSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Click Me"),
            onPressed: () {
              TopSheet.show(
                context: context,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text('Music'),
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text('Photos'),
                    ),
                    ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Video'),
                    ),
                  ],
                ),
                direction: TopSheetDirection.TOP,
              );
            },
          ),
        ),
      ),
    );
  }
}