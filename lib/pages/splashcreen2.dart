import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:smarthomeui/pages/home_page.dart';

class splashscreen2 extends StatelessWidget {
  const splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 188, 188),
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
          duration: const Duration(milliseconds: 2000),
          animationDuration: const Duration(milliseconds: 2000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: const HomePage(),
        ));
  }
}
