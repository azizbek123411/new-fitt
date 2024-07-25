import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  double initialValue = 50;
  bool autoToggle = true;
  bool voiceToggle = true;
  bool coachToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Workout settings',
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.mediumFont,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: Dis.only(lr: 15.w, tb: 5.h),
              width: double.infinity,
              // height: 150.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   Music',
                    style: AppTextStyle.instance.w300.copyWith(
                      fontSize: FontSizeConst.instance.mediumFont,
                    ),
                  ),
                  Slider(
                    activeColor: Colors.teal,
                    max: 100,
                    label: initialValue.round().toString(),
                    value: initialValue,
                    onChanged: (double value) {
                      setState(
                        () {
                          initialValue = value;
                        },
                      );
                    },
                  ),
                  HBox(10.h),
                  ListTile(
                    title: Text(
                      'Auto start with workouts',
                      style: AppTextStyle.instance.w400.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                      ),
                    ),
                    trailing: Switch(
                        activeColor: Colors.teal,
                        value: autoToggle,
                        onChanged: (bool value) {
                          setState(() {
                            autoToggle = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            HBox(20.h),
            Container(
              padding: Dis.only(lr: 15.w, tb: 5.h),
              width: double.infinity,
              // height: 150.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Voice Guide',
                      style: AppTextStyle.instance.w400.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                      ),
                    ),
                    trailing: Switch(
                        activeColor: Colors.teal,
                        value: voiceToggle,
                        onChanged: (bool value) {
                          setState(() {
                            voiceToggle = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text(
                      'Coach Tips',
                      style: AppTextStyle.instance.w400.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                      ),
                    ),
                    trailing: Switch(
                        activeColor: Colors.teal,
                        value: coachToggle,
                        onChanged: (bool value) {
                          setState(() {
                            coachToggle = value;
                          });
                        }),
                  ),
                  HBox(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   Voice Engine',
                        style: AppTextStyle.instance.w400.copyWith(
                          fontSize: FontSizeConst.instance.mediumFont,
                        ),
                      ),
                      Slider(
                        activeColor: Colors.teal,
                        max: 100,
                        label: initialValue.round().toString(),
                        value: initialValue,
                        onChanged: (double value) {
                          setState(
                            () {
                              initialValue = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            HBox(20.h),
          ],
        ),
      ),
    );
  }
}
