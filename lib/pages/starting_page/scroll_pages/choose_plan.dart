
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/app_padding.dart';
import '../../../utils/sboxes.dart';
import '../../../widgets/starting_list_tile.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dis.only(lr: 20.w),
        child: Column(
          children: [
            Text(
              "Choose your plan",
              style: AppTextStyle.instance.w900.copyWith(
                fontSize: FontSizeConst.instance.extraLargeFont,
                color: Colors.black,
              ),
            ),
            HBox(40.h),
            Container(
              padding: Dis.only(top: 5.h),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey.shade100,
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/darts.png',
                  height: 30,
                ),
                title: Text(
                  "Your coach will design a weight loss plan for you to suit you best",
                  style: AppTextStyle.instance.w500.copyWith(
                    fontSize: FontSizeConst.instance.smallFont,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            HBox(40.h),
            StartingListTile(
              onChanged: (bool? val) {
                if(value2==true){
                  setState(() {
                    value2=!value2;
                  });
                }else if(value3==true){
                  setState(() {
                    value3=!value3;
                  });
                }
                setState(() {
                  value1 = val!;
                });
              },
              leading: SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/noun-layer-3320827.svg",
                  height: 40.h,
                ),
              ),
              title: 'Beginner',
              subtitle: "5-10 min a day",
              val: value1,
            ),
            HBox(15.h),
            StartingListTile(
              onChanged: (bool? val) {
                if(value1==true){
                  setState(() {
                    value1=!value1;
                  });
                }else if(value3==true){
                  setState(() {
                    value3=!value3;
                  });
                }
                setState(() {
                  value2 = val!;
                });
              },
              leading: SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/noun-layer-5308824.svg",
                  height: 40.h,
                ),
              ),
              title: 'Intermediate',
              subtitle: "10-20 min a day",
              val: value2,
            ),
            HBox(15.h),
            StartingListTile(
              leading: SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/noun-floors-4241024 (1).svg",
                  height: 40.h,
                ),
              ),
              title: 'Advanced',
              subtitle: "15-30 min a day",
              val: value3,
              onChanged: (bool? val) {
                if(value2==true){
                  setState(() {
                    value2=!value2;
                  });
                }else if(value1==true){
                  setState(() {
                    value1=!value1;
                  });
                }
                setState(() {
                  value3 = val!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
