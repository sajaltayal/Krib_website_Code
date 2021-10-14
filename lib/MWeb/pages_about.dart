import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

page1(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("SAFETY", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("We Care For You", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
            "\nKRIB was born when two friends started discussing how social media has become a threat to many, especially children and women. Before signing up, each user is required to verify themselves using a government-issued ID card.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),

           SizedBox(height: 20,),

        ],
      ),
    ),
  );
}

page2(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("DESIGN", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("A new look to benefit larger display.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
            "\nAs we move towards the future, mobile displays are just getting bigger. Our design team designed an application to take advantage of that.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),
            
            SizedBox(height: 20,),
        ],
      ),
    ),
  );
}


page3(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("ACCESSIBLE", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("Every element is placed very carefully.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
           "\nThe bottom menu bar has been revamped into a new, mobile icon. Tap on it to access the menu, and seamlessly navigate throughout the application.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),
            SizedBox(height: 20,),
        ],
      ),
    ),
  );
}

page4(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("PROFILE", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("Your profile has a new look.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
            "\nWe know you love your profile section. After all, it is made by you. We have made slight changes to it. For example,we have increased the size of your display picture, so now people can easily identify you. We know you will love it more.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),

           SizedBox(height: 20,),

        ],
      ),
    ),
  );
}

page5(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("TREND %", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("Who is keeping the count? Well, we are.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
            "\nFor ages, everyone has seen likes count. But, it is time to consider other parameters, such as dislike, comment, save. Combining all these parameters, we have come up with trend %. Each post will have its %, which is bound to change depending upon the user’s interaction.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),

           SizedBox(height: 20,),

        ],
      ),
    ),
  );
}

page6(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding: EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("ACHIEVEMENTS", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height:390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("Display your proud achievements to everybody.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
           "\nWe understand the hard work you put in to get on the podium. Now is the time to display your hard work. We require your certificate to verify the achievement, and once verified, it will be placed under the achievements section on your profile. You may add more than one achievement.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
           ),

           SizedBox(height: 20,),

        ],
      ),
    ),
  );
}

page7(context, VideoPlayerController _videoController, Future<void> _initializeVideoPlayer){
  return Padding(
    padding:EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03),
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("CREATORS", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

          Center(
            child: Container(
              
              height: 390,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: FutureBuilder(
                  future: _initializeVideoPlayer,
                  builder: (context, snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VideoPlayer(_videoController)
                        );
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  })
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          AutoSizeText("It is time to appreciate your favourite creators.", style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontSize: 20,
            
          ),
          textAlign: TextAlign.left,
          ),
           AutoSizeText(
            "\nA lot of work is put in behind the curtains to create your favorite content. You can show your appreciation towards the creator by paying him/her for his hard work. We call them sweets. Sending sweets is very simple: go to the creator’s profile, tap on the sweets button and pay the amount.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Times New Roman"
              ),
              
           ),

           SizedBox(height: 20,),
          
        ],
      ),
    ),
  );
}

