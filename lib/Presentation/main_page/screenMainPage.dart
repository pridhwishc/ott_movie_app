import 'package:flutter/material.dart';
import 'package:ott_movie_app/Presentation/details_page/screenDetailsPage.dart';
import 'package:ott_movie_app/Presentation/home_page/screenHomePage.dart';
import 'package:ott_movie_app/Presentation/main_page/widgets/bottom_Navigation.dart';
import 'package:ott_movie_app/Presentation/search_page/screenSearchPage.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHomePage(),
    ScreenSearchPage(),
    ScreenDetailsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}

