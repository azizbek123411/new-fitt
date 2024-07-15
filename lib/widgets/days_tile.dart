import 'package:flutter/material.dart';
import 'package:newfit/pages/workout_pages/plan_page.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../config/font_size.dart';
import '../config/text_styles.dart';
import '../utils/app_padding.dart';

class DaysTile extends StatelessWidget {
  String days;
  String times;

  DaysTile({
    super.key,
    required this.days,
    required this.times,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.only(tb: 8.h),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlanPage(),
              ),
            );
          },
          title: Text(
            days,
            style: AppTextStyle.instance.w900.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
            ),
          ),
          subtitle: Text(
            times,
            style: AppTextStyle.instance.w400.copyWith(
              fontSize: FontSizeConst.instance.smallFont,
              color: Colors.grey.shade700,
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlanPage(),
                ),
              );
            },
            child: Text(
              "Start",
              style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.mediumFont,
                  color: Colors.teal),
            ),
          ),
        ),
      ),
    );
  }
}
