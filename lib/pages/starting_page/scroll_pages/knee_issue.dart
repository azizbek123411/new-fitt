
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/app_padding.dart';
import '../../../utils/sboxes.dart';
import '../../../widgets/starting_list_tile.dart';

class KneeIssue extends StatefulWidget {
  const KneeIssue({super.key});

  @override
  State<KneeIssue> createState() => _KneeIssueState();
}

class _KneeIssueState extends State<KneeIssue> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: Dis.only(lr: 20.w),
          child: Column(
            children: [
              HBox(25.h),
              Padding(
                padding: Dis.only(lr: 40.w),
                child: Text(
                  "Do you have knee issues?",
                  style: AppTextStyle.instance.w900.copyWith(
                    fontSize: FontSizeConst.instance.extraLargeFont,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              HBox(40.h),
              StartingListTile(
                onChanged: (bool? val) {
                  if (value2 == true) {
                    setState(() {
                      value2 = !value2;
                    });
                  } else if (value3 == true) {
                    setState(() {
                      value3 = !value3;
                    });
                  }
                  setState(() {
                    value1 = val!;
                  });
                },
                title: "No, I'm fine",
                subtitle: 'I do not any issues',
                leading: SvgPicture.asset(
                  "assets/svg/iam.svg",
                  height: 50.h,
                ),
                val: value1,
              ),
              HBox(20.h),
              StartingListTile(
                onChanged: (bool? val) {
                  if (value1 == true) {
                    setState(() {
                      value1 = !value1;
                    });
                  } else if (value3 == true) {
                    setState(() {
                      value3 = !value3;
                    });
                  }
                  setState(() {
                    value2 = val!;
                  });
                },
                title: 'Low impact',
                subtitle: 'Friendly to overweight people',
                leading: SvgPicture.asset(
                  "assets/svg/overweight.svg",
                  height: 50.h,
                ),
                val: value2,
              ),
              HBox(20.h),
              StartingListTile(
                onChanged: (bool? val) {
                  if (value2 == true) {
                    setState(() {
                      value2 = !value2;
                    });
                  } else if (value1 = true) {
                    setState(() {
                      value1 = !value1;
                    });
                  }
                  setState(() {
                    value3 = val!;
                  });
                },
                title: 'No jumping',
                subtitle: 'No noise, apartment friendly',
                leading: Image.asset(
                  "assets/images/knee.png",
                  height: 50.h,
                ),
                val: value3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
