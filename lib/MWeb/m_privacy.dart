import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class MPrivacy extends StatefulWidget {

  @override
  _MPrivacyState createState() => _MPrivacyState();
}

class _MPrivacyState extends State<MPrivacy> with TickerProviderStateMixin{
  // bool _isDashboardShowing = false;
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
      end: Offset(0, 0),
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
    textAnimationController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                        AutoSizeText(
                          "PRIVACY",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),

                        AutoSizeText(
                          "\nHi\nSince we have just launched, we are still writing this book. However, we would like to point out few things. First, in no case do we intend to save your ID cards photos and use them elsewhere. They are removed as soon as possible. Second, to maintain a healthy environment, we do not like any content that may be inappropriate, such as, but not limited to, pornography, child abuse, terrorism, violent activities. Third, we want our users to build a real community. Thus, users are required to maintain their social activities that do not affect other users.\n\nThat’s it, folks. Please remember that this page will be updated regularly. Have fun.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Times New Roman"
                            ),
                            //maxLines: 20,
                        ),

                        SizedBox(
                          height: 30,
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