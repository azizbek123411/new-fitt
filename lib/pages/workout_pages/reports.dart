import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/clumn_data.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  int dayStreak = 1;
  var focusDate = DateTime.now();
  final wBox = Hive.box('planBox');
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Report  and  Weight',
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.mediumFont,
          ),
        ),
      ),
      body: Padding(
        padding: Dis.only(
          lr: 10.w,
          top: 8.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: Dis.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColumnData(numb: 1, name: 'Workout'),
                        ColumnData(numb: 0.0, name: 'Kcal'),
                        ColumnData(numb: 0, name: 'Minutes'),
                      ],
                    ),
                    HBox(30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'This week',
                          style: AppTextStyle.instance.w900.copyWith(
                            fontSize: FontSizeConst.instance.mediumFont,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'History',
                              style: AppTextStyle.instance.w500.copyWith(
                                fontSize: FontSizeConst.instance.mediumFont,
                                color: Colors.teal,
                              ),
                            ))
                      ],
                    ),
                    HBox(17.h),
                    EasyInfiniteDateTimeLine(
                      selectionMode: SelectionMode.alwaysFirst(),
                      showTimelineHeader: false,
                      activeColor: Colors.teal,
                      controller: controller,
                      firstDate: DateTime(2023),
                      focusDate: focusDate,
                      lastDate: DateTime(2026),
                      onDateChange: (selectedData) {
                        setState(() {
                          focusDate = selectedData;
                        });
                      },
                    ),
                    HBox(17.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$dayStreak Day streak",
                          style: AppTextStyle.instance.w400.copyWith(
                            fontSize: FontSizeConst.instance.smallFont,
                          ),
                        ),
                        Text(
                          "$dayStreak Personal Best",
                          style: AppTextStyle.instance.w400.copyWith(
                              fontSize: FontSizeConst.instance.smallFont,
                              color: Colors.grey.shade300),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              HBox(8.h),
              Container(
                padding: Dis.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weight',
                      style: AppTextStyle.instance.w900.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                      ),
                    ),
                    HBox(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ColumnData(
                          numb: wBox.get('weight') ?? 50,
                          name: 'Your current weight',
                        ),
                        ColumnData(
                          numb: wBox.get('goal') ?? 55,
                          name: 'Your goal weight',
                        ),
                      ],
                    ),
                    HBox(20.h)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
