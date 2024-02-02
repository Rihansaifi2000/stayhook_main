import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stayhook_main/Screens/intro_screen.dart';
import 'package:stayhook_main/Screens/login_screen.dart';


StreamController<int> streamController = StreamController<int>.broadcast();

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(
    const MyApp(),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home:SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String device = "Android";
 // String device = "IOS";
  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: IntroScreen(device: device,),
      splash: Image.asset("assets/images/first_stayhook_logo.png"),
      backgroundColor: Colors.white,
      duration: 3000,
      splashIconSize: 1000,
      splashTransition: SplashTransition.fadeTransition,
     // pageTransitionType: PageTransitionType.,
    );
  }
 /* checkLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userToken = preferences.getString("data");
    if (userToken != null) {
      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => BottomNavBar(
                  device: device,
                )),
                (route) => false);
      }
    } else {
      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => IntroSliderScreen(device: device)),
                (route) => false);
      }
    }
  }*/
}





