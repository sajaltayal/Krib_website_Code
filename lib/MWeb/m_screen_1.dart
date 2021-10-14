import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:krib_website/MWeb/dashboard.dart';
import 'package:krib_website/MWeb/pages_about.dart';
import 'package:krib_website/Web/screen_1.dart';
import 'package:video_player/video_player.dart';

class MIntro extends StatefulWidget {

  @override
  _MIntroState createState() => _MIntroState();
}

class _MIntroState extends State<MIntro> with TickerProviderStateMixin{
  VideoPlayerController _videoController1;
  VideoPlayerController _videoController2;
  VideoPlayerController _videoController3;
  VideoPlayerController _videoController4;
  VideoPlayerController _videoController5;
  VideoPlayerController _videoController6;
  VideoPlayerController _videoController7;
  Future<void> _initializeVideoPlayerFuture1;
  Future<void> _initializeVideoPlayerFuture2;
  Future<void> _initializeVideoPlayerFuture3;
  Future<void> _initializeVideoPlayerFuture4;
  Future<void> _initializeVideoPlayerFuture5;
  Future<void> _initializeVideoPlayerFuture6;
  Future<void> _initializeVideoPlayerFuture7;

  AnimationController _animationController;
  Animation<Offset> _animation;

  Animation<Offset> textAnimation;
  AnimationController textAnimationController;
  Animation<double> textFadeAnimation;

  @override
  void initState(){
    setVideoPlayer1();

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

  setVideoPlayer1(){
      _videoController1 =VideoPlayerController.asset(videoUrl[0]);
     _initializeVideoPlayerFuture1 = _videoController1.initialize().then((doc){
      _videoController1.play();
      _videoController1.setLooping(true);
      });
       _videoController2 =VideoPlayerController.asset(videoUrl[1]);
     _initializeVideoPlayerFuture2 = _videoController2.initialize().then((doc){
      _videoController2.play();
      _videoController2.setLooping(true);
      });
       _videoController3 =VideoPlayerController.asset(videoUrl[2]);
     _initializeVideoPlayerFuture3 = _videoController3.initialize().then((doc){
      _videoController3.play();
      _videoController3.setLooping(true);
      });
       _videoController4 =VideoPlayerController.asset(videoUrl[3]);
     _initializeVideoPlayerFuture4 = _videoController4.initialize().then((doc){
      _videoController4.play();
      _videoController4.setLooping(true);
      });
       _videoController5 =VideoPlayerController.asset(videoUrl[4]);
     _initializeVideoPlayerFuture5 = _videoController5.initialize().then((doc){
      _videoController5.play();
      _videoController5.setLooping(true);
      });
       _videoController6 =VideoPlayerController.asset(videoUrl[5]);
     _initializeVideoPlayerFuture6 = _videoController6.initialize().then((doc){
      _videoController6.play();
      _videoController6.setLooping(true);
     });

       _videoController7 =VideoPlayerController.asset(videoUrl[6]);
     _initializeVideoPlayerFuture7 = _videoController7.initialize().then((doc){
      _videoController7.play();
      _videoController7.setLooping(true);
    });

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
              padding: EdgeInsets.only(top: 10),
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
            
            height: double.maxFinite,
            width: double.maxFinite,
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
            child: ListView(
              shrinkWrap: true,
              children:[
                SlideTransition(
                  position: textAnimation,
                  child: FadeTransition(
                    opacity: textFadeAnimation,
                    child: page1(context, _videoController1, _initializeVideoPlayerFuture1),
                  ),
                ),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page2(context, _videoController2, _initializeVideoPlayerFuture2),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page3(context, _videoController3, _initializeVideoPlayerFuture3),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page4(context, _videoController4, _initializeVideoPlayerFuture4),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page5(context, _videoController5, _initializeVideoPlayerFuture5),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page6(context, _videoController6, _initializeVideoPlayerFuture6),
                Divider(
                  thickness: MediaQuery.of(context).size.height * 0.03,
                  height: 10,
                  color: Color(0xff1f1f1f),
                ),
                page7(context, _videoController7, _initializeVideoPlayerFuture7),
              ]
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