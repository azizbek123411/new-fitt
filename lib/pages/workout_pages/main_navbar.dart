
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:newfit/pages/workout_pages/plan_page.dart';
import 'package:newfit/pages/workout_pages/profile_page.dart';
import 'package:newfit/pages/workout_pages/reports_page.dart';

import '../../config/font_size.dart';
import '../../config/text_styles.dart';

class NavBar extends StatefulWidget {
  static const String id = 'main';

  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    const PlanPage(),
    const ReportsPage(),
    const ProfilePage(),
  ];
  PageController controller = PageController();
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (int index) {
          setState(() {
            selectIndex = index;
          });
        },
        children: [
          pages[selectIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
        selectedItemColor: Colors.teal,
        selectedLabelStyle: AppTextStyle.instance.w700.copyWith(
          fontSize: FontSizeConst.instance.smallFont,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.document,
              size: 27,
            ),
            label: "Plan",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.calendar,
              size: 27,
            ),
            label: "Reports",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.profile,
              size: 27,
            ),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
