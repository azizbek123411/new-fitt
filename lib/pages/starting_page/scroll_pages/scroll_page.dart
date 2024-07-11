import "dart:developer";
import "package:flutter/material.dart";
import "package:newfit/pages/starting_page/scroll_pages/plank.dart";
import "package:newfit/pages/starting_page/scroll_pages/push_ups.dart";
import "package:newfit/pages/starting_page/scroll_pages/your_height.dart";
import "package:newfit/pages/starting_page/scroll_pages/your_weight.dart";
import "package:newfit/utils/screen_utils.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";
import "../../../config/font_size.dart";
import "../../../config/text_styles.dart";
import "../../../utils/app_padding.dart";
import "choose_plan.dart";
import "knee_issue.dart";

class ScrollPage extends StatefulWidget {
  static String id="scroll";
  const ScrollPage({super.key});

  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  int selectIndex = 0;
  final controller = PageController();
  final pages = [
    const ChoosePlan(),
    const PushUps(),
    const Plank(),
    const YourHeight(),
    const YourWeight(),
    const KneeIssue(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: SmoothPageIndicator(
          controller: controller,
          count: 6,
          onDotClicked: (index) {
            log("hel");
            setState(() {
              index = selectIndex;
            });
          },
          effect: WormEffect(
            dotColor: Colors.grey,
            activeDotColor: Colors.teal,
            dotWidth: 30.w,
            dotHeight: 5.h,
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        controller: controller,
        children: [
          pages[0],
          pages[1],
          pages[2],
          pages[3],
          pages[4],
          pages[5],
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            if (selectIndex == 0) {
              controller.animateToPage(1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            } else if (selectIndex == 1) {
              controller.animateToPage(2,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            } else if (selectIndex == 2) {
              controller.animateToPage(3,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            } else if (selectIndex == 3) {
              controller.animateToPage(4,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            } else if (selectIndex == 4) {
              controller.animateToPage(5,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceIn);
            } else if(selectIndex==5){
              Navigator.pushReplacementNamed(context, "main");
            }
          });
        },
        child: Container(
          margin: Dis.only(bottom: 20.h, lr: 15.w),
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "NEXT",
              style: AppTextStyle.instance.w900.copyWith(
                fontSize: FontSizeConst.instance.extraLargeFont,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
