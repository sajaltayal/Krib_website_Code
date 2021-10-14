import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:krib_website/Web/faq.dart';
import 'package:page_transition/page_transition.dart';
import 'contact.dart';
import 'download.dart';
import 'screen_1.dart';

class Privacy extends StatefulWidget {

  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> with TickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController animationController;

  Animation<Offset> textAnimation;
  AnimationController textAnimationController;
  Animation<double> textFadeAnimation;

  bool isShowing = false;
  final _formKey = GlobalKey<FormState>();
   @override
  void initState() {
    

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
    super.initState();
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
    textAnimationController.dispose();
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
                           // Navigator.push(context, PageTransition(child: Privacy(), type: PageTransitionType.fade));
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
                  child: SlideTransition(
                    position: textAnimation,
                    child: FadeTransition(
                      opacity: textFadeAnimation,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText("PRIVACY POLICY", style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: "Times New Roman",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1
                            ),
                            ),

                            AutoSizeText(
                              "\nHi\nSince we have just launched, we are still writing this book. However, we would like to point out few things. First, in no case do we intend to save your ID cards photos and use them elsewhere. They are removed as soon as possible. Second, to maintain a healthy environment, we do not like any content that may be inappropriate, such as, but not limited to, pornography, child abuse, terrorism, violent activities. Third, we want our users to build a real community. Thus, users are required to maintain their social activities that do not affect other users.\n\nThat’s it, folks. Please remember that this page will be updated regularly. Have fun.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "Times New Roman",
                                  letterSpacing: 1
                                ),
                                maxLines: 14,
                            ),

                            //  FlatButton(
                            //       child: Text("Send", style: TextStyle(
                            //         color: Colors.white,
                            //       ),),
                            //       color: Colors.blue,
                            //       onPressed: (){
                            //         if(_formKey.currentState.validate()){
                            //           print("Number sent");
                            //           //send the number to our server
                            //         }
                            //       },
                            //     )
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


