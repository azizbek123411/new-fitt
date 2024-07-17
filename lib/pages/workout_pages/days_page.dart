import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/days_tile.dart';

class DaysPage extends StatefulWidget {
  static const String id = 'days';

  const DaysPage({super.key});

  @override
  State<DaysPage> createState() => _DaysPageState();
}

class _DaysPageState extends State<DaysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Daily Workouts",
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.largeFont,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: Dis.only(
          lr: 10.w,
          top: 5.h,
        ),
        child: ListView(
          children: List.generate(
            30,
            (index) => Column(
              children: [
                if (index == 0)
                  Container(
                    padding: Dis.only(lr: 16.w, tb: 8.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/back.jpeg",
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.4,
                      ),
                    ),
                    height: 150.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your gym in your phone',
                          style: AppTextStyle.instance.w700.copyWith(
                            fontSize: FontSizeConst.instance.mediumFont,
                          ),
                        ),
                        Text(
                          'Your status',
                          style: AppTextStyle.instance.w700.copyWith(
                            fontSize: FontSizeConst.instance.extraLargeFont,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  HBox(0),
                DaysTile(
                  days: "Day ${index + 1}",
                  times: "20 times",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
