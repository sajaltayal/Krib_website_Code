import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krib_website/MWeb/m_screen_1.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:page_transition/page_transition.dart';

import 'm_contact.dart';
import 'm_download.dart';
import 'm_faq.dart';
import 'm_privacy.dart';

Widget Dashboard({
  Animation<Offset> animation, 
  AnimationController animationController, 
  // bool isAbout, 
  // bool isDownload, 
  // bool isFaq, 
  // bool isPrivacy, 
  // bool isContact,
  BuildContext context,
  })
  {
  return SlideTransition(
    position: animation,
    child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: BorderedText(
            strokeWidth: 1.5,
            strokeColor: Colors.black,
            child: Text("KRIB", style: TextStyle(
              fontFamily: "Lovelo-LineLight",
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),

        actions: [
      
      IconButton(
        icon: Icon(Icons.clear_rounded, size: 40, color: Colors.black,),
        onPressed: (){
          animationController.reverse();
          //   setState(() {
          //   _isDashboardShowing = !_isDashboardShowing;
          // });
          // if(!_isDashboardShowing){
            
          // }

          // else if(_isDashboardShowing){
          //   _animationController.reverse();
          //   setState(() {
          //   _isDashboardShowing = !_isDashboardShowing;
          // });
          // print(_isDashboardShowing);
          // }
          //print(_isDashboardShowing);
        },
      ),
      SizedBox(width: 20),
    ],
      ),
      body: Stack(
        children: [

          // Image.asset("images/waves2.png", 
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height * 0.5,
          //   alignment: Alignment.center,
          // ),

          // SvgPicture.asset(
          //   "images/Waves.svg",
          //   width: MediaQuery.of(context).size.width,
          //   height: 500,
          //   alignment: Alignment.center,
          // ),
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/waves2.png"),
                fit: BoxFit.scaleDown,
              )
            ),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      ListTile(
                        onTap: ()async{
                          await animationController.reverse();
                          Navigator.push(context, PageTransition(child: IntroSwitcher(), type: PageTransitionType.fade));
                          //isAbout ? animationController.reverse() : Navigator.push(context, PageTransition(child: MIntro(), type: PageTransitionType.fade));
                        },
                        title: Center(
                          child: AutoSizeText(
                            "About",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 22,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                        
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      ListTile(
                        onTap: ()async{
                          await animationController.reverse();
                          Navigator.push(context, PageTransition(child: DownloadSwitcher(), type: PageTransitionType.fade));
                          //isDownload ? animationController.reverse() : Navigator.push(context, PageTransition(child: MDownload(), type: PageTransitionType.fade));
                        },
                        title: Center(
                          child: AutoSizeText(
                            "Download",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 22,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      ListTile(
                        onTap: ()async{
                          await animationController.reverse();
                          Navigator.push(context, PageTransition(child: FaqSwitcher(), type: PageTransitionType.fade));
                          //isFaq ? animationController.reverse() : Navigator.push(context, PageTransition(child: MFaq(), type: PageTransitionType.fade));
                        },
                        title: Center(
                          child: AutoSizeText(
                            "FAQ",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 22,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      ListTile(
                        onTap: ()async{
                          await animationController.reverse();
                            Navigator.push(context, PageTransition(child: PrivacySwitcher(), type: PageTransitionType.fade));
                          //isPrivacy ? animationController.reverse() : Navigator.push(context, PageTransition(child: MPrivacy(), type: PageTransitionType.fade));
                        },
                        title: Center(
                          child: AutoSizeText(
                            "Privacy",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 22,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      ListTile(
                        onTap: ()async{
                          await animationController.reverse();
                          Navigator.push(context, PageTransition(child: ContactSwitcher(), type: PageTransitionType.fade));
                          //isContact ? animationController.reverse() : Navigator.push(context, PageTransition(child: MContact(), type: PageTransitionType.fade));
                        },
                        title: Center(
                          child: AutoSizeText(
                            "Contact",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 22,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}