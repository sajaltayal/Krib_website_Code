 import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
 
 page1(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("SAFETY \nWe care for you", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                  "\nKRIB was born when two friends started discussing how social media has become a threat to many, especially children and women. Before signing up, each user is required to verify themselves using a government-issued ID card.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Times New Roman",
                      letterSpacing: 1
                    ),
                  
                  
                maxLines: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page2(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022,top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("DESIGN \nA new look to benefit larger display.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                  "\nAs we move towards the future, mobile displays are just getting bigger. Our design team designed an application to take advantage of that.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Times New Roman",
                      letterSpacing: 1
                    ),
                    maxLines: 7,
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page3(context,AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("ACCESSIBLE \nEvery element is placed very carefully.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                  "\nThe bottom menu bar has been revamped into a new, mobile icon. Tap on it to access the menu, and seamlessly navigate throughout the application.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      letterSpacing: 1,
                      fontFamily: "Times New Roman"
                    ),
                  maxLines: 7,
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page4(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("PROFILE \nYour profile has a new look.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                  "\nWe know you love your profile section. After all, it is made by you. We have made slight changes to it. For example,we have increased the size of your display picture, so now people can easily identify you. We know you will love it more.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Times New Roman",
                      letterSpacing: 1
                    ),
                  maxLines: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page5(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,

        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("TREND % \nWho is keeping the count? Well, we are.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                  "\nFor ages, everyone has seen likes count. But, it is time to consider other parameters, such as dislike, comment, save. Combining all these parameters, we have come up with trend %. Each post will have its %, which is bound to change depending upon the user’s interaction.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Times New Roman",
                      letterSpacing: 1
                    ),
                 maxLines: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page6(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("ACHIEVEMENTS \nDisplay your proud achievements to everybody.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 100.0),
                  child: AutoSizeText(
                    "\nWe understand the hard work you put in to get on the podium. Now is the time to display your hard work. We require your certificate to verify the achievement, and once verified, it will be placed under the achievements section on your profile. You may add more than one achievement.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: "Times New Roman",
                        letterSpacing: 1
                      ),
                   maxLines: 7,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   page7(context, AnimationController _controller, Animation<Offset> animation, Animation<double> fadeAnimation){
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.022, top: MediaQuery.of(context).size.height * 0.17, right: MediaQuery.of(context).size.width * 0.022),
      child: SlideTransition(
        position: animation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText("CREATORS \nIt is time to appreciate your favourite creators.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                ),
                maxLines: 2,
                ),

                AutoSizeText(
                   "\nA lot of work is put in behind the curtains to create your favorite content. You can show your appreciation towards the creator by paying him/her for his hard work. We call them sweets. Sending sweets is very simple: go to the creator’s profile, tap on the sweets button and pay the amount.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Times New Roman",
                      letterSpacing: 1
                    ),
                    maxLines: 7,
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }