import 'package:flutter/material.dart';
import 'package:newfit/pages/starting_page/introduce_page.dart';
import 'package:newfit/pages/starting_page/scroll_pages/scroll_page.dart';
import 'package:newfit/pages/starting_page/splash_page.dart';
import 'package:newfit/pages/workout_pages/main_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        IntroducePage.id: (context) => const IntroducePage(),
        ScrollPage.id: (context) => const ScrollPage(),
        NavBar.id: (context) => const NavBar(),
      },    );
  }
}

