
import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/workout_tile.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Plan",
          style: AppTextStyle.instance.w900.copyWith(
            fontSize: FontSizeConst.instance.largeFont
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15.w,right: 15.w),
        child: Column(
          children: [
            WorkoutTile(),
          ],
        ),
      ),
    );
  }
}
