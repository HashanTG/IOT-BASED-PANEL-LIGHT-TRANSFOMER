import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:smarthomeui/pages/reg.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.lightBlue,
          Colors.blue,
        ],
      ),
      childWidget: const SizedBox(
        height: 50,
        child: Icon(
          Icons.lightbulb_circle_outlined,
          size: 100,
          color: Colors.white,
        ),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: SignInSignUpPage(),
    ));
  }
}
