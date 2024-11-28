import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:educita/Login_Screens/login%20screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 450,
      duration: 300,
      backgroundColor: Colors.blue.shade200,
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.scaleTransition,
      splash: Image.asset("assets/logo2.jpg"),
      nextScreen: Login_Screen(),
    );
  }
}

class PageTransitionType {
  static var fade;
}
