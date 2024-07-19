import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/clumn_data.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  int workout = 1;
  double kKal = 0.0;
  double minutes = 0;
  final wBox = Hive.box('planBox');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              ColumnData(numb: 1, name: 'Workout'),
              ColumnData(numb: 0.0, name: 'Kcal'),
              ColumnData(numb: 0, name: 'Minutes'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
