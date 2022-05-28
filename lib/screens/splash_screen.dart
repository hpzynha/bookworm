import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookworm/constants.dart';
import 'package:bookworm/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
            splash: SvgPicture.asset('assets/images/bookworm.svg'),
            duration: 2500,
            backgroundColor: bBackgroundStartScreen,
            nextScreen: const LoginScreen(),
            splashTransition: SplashTransition.fadeTransition),
      ),
    );
  }
}
