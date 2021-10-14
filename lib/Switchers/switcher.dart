import 'package:flutter/material.dart';
import 'package:krib_website/MWeb/m_contact.dart';
import 'package:krib_website/MWeb/m_download.dart';
import 'package:krib_website/MWeb/m_faq.dart';
import 'package:krib_website/MWeb/m_privacy.dart';
import 'package:krib_website/SplashScreen/m_verify.dart';
import 'package:krib_website/SplashScreen/verify.dart';
import 'package:krib_website/Web/contact.dart';
import 'package:krib_website/Web/download.dart';
import 'package:krib_website/Web/faq.dart';
import 'package:krib_website/Web/privacy.dart';
import 'package:krib_website/Web/screen_1.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

import '../MWeb/m_screen_1.dart';
import '../main.dart';

class VerifySwitcher extends StatefulWidget {

  @override
  _VerifySwitcherState createState() => _VerifySwitcherState();
}

class _VerifySwitcherState extends State<VerifySwitcher> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= 839){
          print(MediaQuery.of(context).size.width);
          print(id);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            return Verify();
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            
            return MVerify();
          }
        }
        print(id);
        return MVerify();
      },
    );
  }
}

class IntroSwitcher extends StatefulWidget {

  @override
  _IntroSwitcherState createState() => _IntroSwitcherState();
}

class _IntroSwitcherState extends State<IntroSwitcher> {
  VideoPlayerController _videoIntroController;
  void initState(){
    super.initState();
    _videoIntroController = VideoPlayerController.asset("assets/videos/KRIB_intro.mp4");
    _videoIntroController.pause();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        _videoIntroController.pause();
        if(constraints.maxWidth >= 839){
          _videoIntroController.pause();
          print(MediaQuery.of(context).size.width);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            _videoIntroController.pause();
            return Intro(videoIntroController: _videoIntroController,);
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            _videoIntroController.pause();
            return MIntro();
          }
        }
        _videoIntroController.pause();
        return MIntro();
      },
    );
  }
}


class PrivacySwitcher extends StatefulWidget {

  @override
  _PrivacySwitcherState createState() => _PrivacySwitcherState();
}

class _PrivacySwitcherState extends State<PrivacySwitcher> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= 839){
          print(MediaQuery.of(context).size.width);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            return Privacy();
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            return MPrivacy();
          }
        }
        return MPrivacy();
      },
    );
  }
}

class FaqSwitcher extends StatefulWidget {

  @override
  _FaqSwitcherState createState() => _FaqSwitcherState();
}

class _FaqSwitcherState extends State<FaqSwitcher> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= 839){
          print(MediaQuery.of(context).size.width);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            return Faq();
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            return MFaq();
          }
        }
        return MFaq();
      },
    );
  }
}

class DownloadSwitcher extends StatefulWidget {

  @override
  _DownloadSwitcherState createState() => _DownloadSwitcherState();
}

class _DownloadSwitcherState extends State<DownloadSwitcher> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= 839){
          print(MediaQuery.of(context).size.width);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            return Download();
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            return MDownload();
          }
        }
        return MDownload();
      },
    );
  }
}

class ContactSwitcher extends StatefulWidget {

  @override
  _ContactSwitcherState createState() => _ContactSwitcherState();
}

class _ContactSwitcherState extends State<ContactSwitcher> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= 839){
          print(MediaQuery.of(context).size.width);
          if(MediaQuery.of(context).orientation == Orientation.landscape){
            return Contact();
          }
          if(MediaQuery.of(context).orientation == Orientation.portrait){
            return MContact();
          }
        }
        return MContact();
      },
    );
  }
}
