import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:krib_website/Web/faq.dart';
import 'package:krib_website/Web/privacy.dart';
import 'package:page_transition/page_transition.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:video_player/video_player.dart';

import 'contact.dart';
import 'download.dart';
import 'pages_about.dart';


List<String> videoUrl = ['assets/videos/Safety.mp4', 'assets/videos/design.mp4', 'assets/videos/accessible.mp4', 'assets/videos/profile.mp4', 'assets/videos/trend.mp4', 'assets/videos/achievements.mp4', 'assets/videos/sweets.mp4'];

class Intro extends StatefulWidget {
  final VideoPlayerController videoIntroController;
  Intro({this.videoIntroController});

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with AutomaticKeepAliveClientMixin,TickerProviderStateMixin{
  Animation<Offset> animation;
  AnimationController animationController;

  Animation<Offset> textAnimation1;
  AnimationController textAnimationController1;
  Animation<double> textFadeAnimation1;

  Animation<Offset> textAnimation2;
  AnimationController textAnimationController2;
  Animation<double> textFadeAnimation2;

  Animation<Offset> textAnimation3;
  AnimationController textAnimationController3;
  Animation<double> textFadeAnimation3;

  Animation<Offset> textAnimation4;
  AnimationController textAnimationController4;
  Animation<double> textFadeAnimation4;

  Animation<Offset> textAnimation5;
  AnimationController textAnimationController5;
  Animation<double> textFadeAnimation5;

  Animation<Offset> textAnimation6;
  AnimationController textAnimationController6;
  Animation<double> textFadeAnimation6;

  Animation<Offset> textAnimation7;
  AnimationController textAnimationController7;
  Animation<double> textFadeAnimation7;

  Animation<Offset> indexAnimation1;
  AnimationController indexController1;
  Animation<double> indexFade1;

  Animation<Offset> con1;
  AnimationController conController1;
  Animation<double> con1Fade;

  Animation<Offset> con2;
  AnimationController conController2;
  Animation<double> con2Fade;

  Animation<Offset> con3;
  AnimationController conController3;
  Animation<double> con3Fade;


  VideoPlayerController _videoController;
  Future<void> _initializeVideoPlayerFuture;
  Future<void> _initializeVideoPlayerFutureIntro;
  Animation<Offset> animationVideo;
  AnimationController animationVideoController;
  bool isShowing = false;
  bool isVedioShowing = false;
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  List<bool> isHover = [false, false];
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

    animationVideoController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
    animationVideo = Tween<Offset>(
      begin: Offset(-1.8, 0),
      end: Offset(-0.33, 0.0),
    ).animate(CurvedAnimation(
      parent: animationVideoController,
      curve: Curves.fastLinearToSlowEaseIn,
    ));

    sta1();
    sta2();
    sta3();
    sta4();
    sta5();
    sta6();
    sta7();
    setVideoPlayer(_currentPageNotifier.value);
    // Timer(Duration(seconds: 2), (){
    //   setIntroPlayer();
    // });

    indexController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200)
    );

    indexAnimation1 = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.15)
    ).animate(indexController1);

    indexFade1 = Tween<double>(
      begin: 1,
      end: 0
    ).animate(indexController1);

    conAnim1();
    conAnim2();
    conAnim3();
    setIntroPlayer();
    super.initState();
  }

  @override
  void dispose() {
    // Don't forget to dispose the animation controller on class destruction
    animationController.dispose();
    animationVideoController.dispose();
    _videoController.dispose();
    widget.videoIntroController.dispose();
    textAnimationController1.dispose();
    textAnimationController2.dispose();
    textAnimationController3.dispose();
    textAnimationController4.dispose();
    textAnimationController5.dispose();
    textAnimationController6.dispose();
    textAnimationController7.dispose();
    indexController1.dispose();
    super.dispose();
  }

  setVideoPlayer(int index){
    setState(() {
      _videoController =VideoPlayerController.asset(videoUrl[index]);
     _initializeVideoPlayerFuture = _videoController.initialize().then((doc){
      _videoController.play();
      _videoController.setLooping(true);
    });
    });
  }

  conAnim1(){
      conController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    con1 = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-0.5, 0),
    ).animate(conController1);

    con1Fade = Tween<double>(begin: 1, end: 0).animate(conController1);
  }

  conAnim2(){
      conController2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    con2 = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-0.5, 0),
    ).animate(conController2);

    con2Fade = Tween<double>(begin: 1, end: 0).animate(conController2);
  }

  conAnim3(){
      conController3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    con3 = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-0.5, 0),
    ).animate(conController3);

    con3Fade = Tween<double>(begin: 1, end: 0).animate(conController3);
  }

  setIntroPlayer()async{
    await widget.videoIntroController.pause();
    _initializeVideoPlayerFutureIntro = widget.videoIntroController.initialize().then((value) {
      widget.videoIntroController.pause();
      widget.videoIntroController.setLooping(false);
      widget.videoIntroController.setVolume(1);
    });
  }

  sta1(){
    textAnimationController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation1 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController1);

    textFadeAnimation1 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController1, 
      curve: Curves.easeIn)
      );

    textAnimationController1.forward();
  }

  sta2(){
      textAnimationController2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation2 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController2);

    textFadeAnimation2 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController2, 
      curve: Curves.easeIn)
      );

    textAnimationController2.forward();
  }

  sta3(){
      textAnimationController3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation3 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController3);

    textFadeAnimation3 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController3, 
      curve: Curves.easeIn)
      );

    textAnimationController3.forward();
  }

  sta4(){
      textAnimationController4 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation4 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController4);

    textFadeAnimation4 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController4, 
      curve: Curves.easeIn)
      );

    //textAnimationController2.forward();
  }

  sta5(){
      textAnimationController5 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation5 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController5);

    textFadeAnimation5 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController5, 
      curve: Curves.easeIn)
      );

    //textAnimationController2.forward();
  }

  sta6(){
      textAnimationController6 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation6 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController6);

    textFadeAnimation6 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController6, 
      curve: Curves.easeIn)
      );

    //textAnimationController2.forward();
  }

  sta7(){
      textAnimationController7 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );

    textAnimation7 = Tween<Offset>(
      begin: Offset(0.1, 0),
      end: Offset(0,0),
    ).animate(textAnimationController7);

    textFadeAnimation7 = Tween<double>(
      begin: 0,
      end: 1
    ).animate(CurvedAnimation(
      parent: textAnimationController7, 
      curve: Curves.easeIn)
      );

    //textAnimationController2.forward();
  }

  _buildPageView(PageController _pageController, ValueNotifier _currentPageNotifier){
    return Container(
      height: double.maxFinite,
      child: PageView(
        controller: _pageController,
        onPageChanged: (int index)async{
          _currentPageNotifier.value = await index;
          print(_currentPageNotifier.value);
          setVideoPlayer(index);
          indexController1.forward().then((value){
            indexController1.reverse();
          });

           _currentPageNotifier.value == 0 ? conController1.forward().then((value){
             conController1.reverse();
           }) : conController2.forward().then((value){
             conController2.reverse();
           });

           _currentPageNotifier.value == 6 ? conController3.forward().then((value){
             conController3.reverse();
           }) : print('conController3 not in use');
          
          setState(() {
            index != 0 ? textAnimationController1.reverse() : textAnimationController1.forward();
            index != 1 ? textAnimationController2.reverse() : textAnimationController2.forward();
            index != 2 ? textAnimationController3.reverse() : textAnimationController3.forward();
            index != 3 ? textAnimationController4.reverse() : textAnimationController4.forward();
            index != 4 ? textAnimationController5.reverse() : textAnimationController5.forward();
            index != 5 ? textAnimationController6.reverse() : textAnimationController6.forward();
            index != 6 ? textAnimationController7.reverse() : textAnimationController7.forward();
          });
        },
        children: [
          page1(context, textAnimationController1, textAnimation1, textFadeAnimation1),
          page2(context, textAnimationController2, textAnimation2, textFadeAnimation2),
          page3(context, textAnimationController3, textAnimation3, textFadeAnimation3),
          page4(context, textAnimationController4, textAnimation4, textFadeAnimation4),
          page5(context, textAnimationController5, textAnimation5, textFadeAnimation5),
          page6(context, textAnimationController6, textAnimation6, textFadeAnimation6),
          page7(context, textAnimationController7, textAnimation7, textFadeAnimation7),
        ],
      )
      );
  }

  Widget mainScreen(context){
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
          if(animationVideoController.isCompleted){
            await animationVideoController.reverse();
            setState(() {
              if(isVedioShowing){
                isVedioShowing = !isVedioShowing;
              }
            });
          }
        },
        child: Container(
            width: double.maxFinite,
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
                   
                    width: MediaQuery.of(context).size.width * 75,
                    color: Colors.white,
                    child: Row(
                      //mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        TextButton(
                          onPressed: (){
                            //Navigator.push(context, PageTransition(child: Intro(), type: PageTransitionType.fade));
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
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1,),
                  height: double.maxFinite,
                  color: Colors.transparent,
                  child: ArrowPageIndicator(
                    isJump: true,
                    iconColor: Colors.white,
                    iconSize: 35,
                    isInside: true,
                    leftIcon: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.82, left: MediaQuery.of(context).size.width * 0.532),
                      child: SvgPicture.asset("assets/Icons/Small arrow left.svg", color: Colors.white, height: 30,),
                    ),
                    rightIcon: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.82),
                      child: SvgPicture.asset("assets/Icons/Small arrow right.svg", color: Colors.white, height: 30,),
                    ),
                    pageController: _pageController, 
                    currentPageNotifier: _currentPageNotifier, 
                    itemCount: 7, 
                    child: _buildPageView(_pageController, _currentPageNotifier)
                    ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.width * 0.00,
                  child: isShowing ? Text('') : FlatButton(
                    child: Icon(Icons.menu_rounded, size: 35, color: Colors.white,),
                    onPressed: (){
                       setState(() {
                          isShowing = !isShowing;
                        });
                        animationController.forward();
                    },
                    ),
                    
                  ),

                  SlideTransition(
                    position: animationVideo,
                    child: Container(
                      height: double.maxFinite,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Colors.black,
                            offset: Offset(5,0)
                          )
                        ]
                      ),
                      child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FutureBuilder(
                              future: _initializeVideoPlayerFutureIntro,
                              builder: (context, snapshot) {
                                if(snapshot.connectionState == ConnectionState.done){
                                  // _videoIntroController.pause();
                                  if(isVedioShowing){
                                    widget.videoIntroController.play();
                                  }
                                  if(!isVedioShowing){
                                    setIntroPlayer();
                                  }
                                  // isVedioShowing ? widget.videoIntroController.play() : setIntroPlayer();
                                  return Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.05,),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.67,
                                      height: MediaQuery.of(context).size.height * 0.8,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: VideoPlayer(widget.videoIntroController)),
                                    ),
                                  ),
                                );
                                }
                                else{
                                  return Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.05,),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.67,
                                        height: MediaQuery.of(context).size.height * 0.8,
                                        decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                        child: CupertinoTheme(
                                          data: CupertinoThemeData(brightness: Brightness.dark),
                                          child: CupertinoActivityIndicator(radius: 20,))),
                                    ),
                                  );
                                }
                              }
                            ),

                            SizedBox(
                                height: MediaQuery.of(context).size.height * 0.075,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: FlatButton.icon(
                                  onPressed: ()async{
                                    await animationVideoController.reverse();
                                    setState(() {
                                        if(isVedioShowing){
                                          isVedioShowing = !isVedioShowing;
                                        }
                                        // textAnimationController2.forward();
                                        // textAnimationController3.forward();
                                      });
                                      
                                    // if(animationVideoController.isCompleted){
                                    //   _videoIntroController.pause();
                                    // }
                                    
                                  },
                                  label: AutoSizeText("go back", style: TextStyle(
                                    fontSize: 21,
                                    fontFamily: "playfair display",
                                    color: Colors.black,
                                    ),
                                    maxLines: 1,
                                  ),
                                  icon: Padding(
                                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                                    child: SvgPicture.asset("assets/Icons/Big arrow left.svg",
                                    
                                    height: 30,
                                    color: Colors.black,
                                    alignment: Alignment.topRight,
                                    ),
                                  ),
                                ),
                              ),
                            

                          ],
                        ),
                      ),
                    ),
                  ),
                
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.74,
                  left: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    children: [
                       AutoSizeText(
                        '0', 
                        style: TextStyle(
                        fontSize: ResponsiveFlutter.of(context).fontSize(10),
                        fontFamily: "Zen_Tokyo",
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                      ),
                      maxLines: 1,
                      ),
                      SlideTransition(
                        position: indexAnimation1,
                        child: FadeTransition(
                          opacity: indexFade1,
                          child: AutoSizeText(
                            '${_currentPageNotifier.value + 1}', 
                            style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(10),
                            fontFamily: "Zen_Tokyo",
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                          ),
                          maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                isVedioShowing ? Text("") : AnimatedPositioned(
                  top: isShowing ? MediaQuery.of(context).size.height * 0.095 : MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.02,
                  duration: Duration(milliseconds: 180),
                  child: BorderedText(
                    strokeWidth: 1.5,
                    strokeColor: Colors.white,
                    child: Text("KRIB", style: TextStyle(
                      fontFamily: "Lovelo-LineLight",
                      fontSize: 40,
                      letterSpacing: 2,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(0,0),
                          blurRadius: 10,
                        )
                      ]
                    )),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 0.958,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SlideTransition(
                        position: con1,
                        child: FadeTransition(
                          opacity: con1Fade,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            height: 3,
                            width: _currentPageNotifier.value == 0 ? MediaQuery.of(context).size.width * 0.055 : MediaQuery.of(context).size.width * 0.025,
                            decoration: BoxDecoration(
                              color: _currentPageNotifier.value == 0 ? Color(0xffbf8a41) : Color(0xff6f542f),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SlideTransition(
                        position: con2,
                        child: FadeTransition(
                          opacity: con2Fade,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            height: 3,
                            width: _currentPageNotifier.value != 0 && _currentPageNotifier.value != 6 ? MediaQuery.of(context).size.width * 0.055 : MediaQuery.of(context).size.width * 0.025,
                            decoration: BoxDecoration(
                              color: _currentPageNotifier.value != 0 && _currentPageNotifier.value != 6 ? Color(0xffbf8a41) : Color(0xff6f542f),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      SlideTransition(
                        position: con3,
                        child: FadeTransition(
                          opacity: con3Fade,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            height: 3,
                            width: _currentPageNotifier.value == 6 ? MediaQuery.of(context).size.width * 0.055 : MediaQuery.of(context).size.width * 0.025,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentPageNotifier.value == 6 ? Color(0xffbf8a41) : Color(0xff6f542f),
                            ),
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
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            // ignore: missing_return
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                return Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02, ),
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: VideoPlayer(_videoController)
                  );
              }
              else{
                return Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02, ),
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: Colors.transparent,
                  child: Center(
                    child: CupertinoActivityIndicator(
                      radius: 20,
                    ),
                  ),
                );
              }
            }
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton.icon(
              onPressed: (){
                animationVideoController.forward();
                if(animationVideoController.isAnimating){
                  setState(() {
                    isVedioShowing = !isVedioShowing;
                  });
                }
                // if(animationVideoController.isCompleted){
                //   _videoIntroController.play();
                // }
                
              },
              label: AutoSizeText("watch video", style: TextStyle(
                fontSize: 21,
                fontFamily: "playfair display",
                color: Colors.black,
                ),
                maxLines: 1,
              ),
              icon: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                child: SvgPicture.asset("assets/Icons/big_arrow_right.svg",
                  height: 30,
                  color: Colors.black,
                  
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {

    super.build(context);
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
            child: mainScreen(context),
          ),
        ],
      ),
    );
  }
}


