import 'package:flutter/material.dart';
import 'package:krib_website/SplashScreen/verify.dart';
import 'package:krib_website/Switchers/switcher.dart';
import 'package:uuid/uuid.dart';

final String id = Uuid().v4();
final String HOME_SCREEN="$id";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MaterialColor(0xffffff00,
          const <int, Color>{
            50: const Color(0xffffff00),
            100: const Color(0xffffff00),
            200: const Color(0xffffff00),
            300: const Color(0xffffff00),
            400: const Color(0xffffff00),
            500: const Color(0xffffff00),
            600: const Color(0xffffff00),
            700: const Color(0xffffff00),
            800: const Color(0xffffff00),
            900: const Color(0xffffff00),

          }
          ),
          ),
      // home: IntroSwitcher(),
      initialRoute: HOME_SCREEN,
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => IntroSwitcher(),
  },
    );
  }
}

