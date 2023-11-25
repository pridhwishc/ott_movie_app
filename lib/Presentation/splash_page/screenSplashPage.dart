import 'package:flutter/material.dart';
import 'package:ott_movie_app/Presentation/main_page/screenMainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenMainPage()));
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
