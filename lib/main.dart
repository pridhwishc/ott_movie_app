import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ott_movie_app/Presentation/main_page/screenMainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: AnimatedSplashScreen(
            splash: Center(
              child: Container(
                child: const Text(
                  'NETFLIX',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),duration:2500,backgroundColor: Colors.black,splashTransition: SplashTransition.scaleTransition,
            nextScreen: ScreenMainPage())
        // home: ScreenMainPage(),
        );
  }
}
