import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:newfit/models/workout_list.dart';
import 'package:newfit/pages/starting_page/introduce_page.dart';
import 'package:newfit/pages/starting_page/scroll_pages/choose_plan.dart';
import 'package:newfit/pages/starting_page/scroll_pages/knee_issue.dart';
import 'package:newfit/pages/starting_page/scroll_pages/plank.dart';
import 'package:newfit/pages/starting_page/scroll_pages/push_ups.dart';
import 'package:newfit/pages/starting_page/scroll_pages/scroll_page.dart';
import 'package:newfit/pages/starting_page/splash_page.dart';
import 'package:newfit/pages/workout_pages/main_navbar.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  var planBox = await Hive.openBox('planBox');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WorkoutList(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBox(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBoxPushUps(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBoxPlanks(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBoxKnee(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
      },
    );
  }
}
