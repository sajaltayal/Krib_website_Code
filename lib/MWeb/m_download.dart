import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class MDownload extends StatefulWidget {

  @override
  _MDownloadState createState() => _MDownloadState();
}

class _MDownloadState extends State<MDownload> with TickerProviderStateMixin{
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
                         AutoSizeText("DOWNLOAD", style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Times New Roman"
                          ),
                          maxLines: 1,
                          ),
                  
                          AutoSizeText(
                            "\nWe are currently available for Android. Soon, we will launch on iOS too. Please input you number below, and we will send an SMS containing the download link.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Times New Roman"
                              ),
                            
                          ),
                  
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                  
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Form(
                                key: _formKey,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (val){
                                      return val.isEmpty ? "Please enter your mobile number" : "";
                                    },
                                    decoration: InputDecoration(
                                      hintText: " Your Mobile Number",
                                      hintStyle: TextStyle(
                                        fontFamily: "Times New Roman",
                                        color: Colors.white,
                                        fontSize: 16
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey, width: 2),
                                      ),
                  
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey, width: 2),
                                      ),
                                    ),
                  
                                  ),
                                )
                              ),
                  
                              Padding(
                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02, left:MediaQuery.of(context).size.width * 0.02 ),
                                child: FlatButton(
                                  height: 50,
                                  child: Text("Send", style: TextStyle(
                                    fontFamily: "Times New Roman",
                                    color: Colors.white,
                                    fontSize: 18,
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
                              ),
                      
                            ],
                          ),
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