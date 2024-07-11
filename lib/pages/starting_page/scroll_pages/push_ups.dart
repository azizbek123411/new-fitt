
import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/app_padding.dart';
import '../../../utils/sboxes.dart';
import '../../../widgets/push_ups_listtile.dart';

class PushUps extends StatefulWidget {
  const PushUps({super.key});

  @override
  State<PushUps> createState() => _PushUpsState();
}

class _PushUpsState extends State<PushUps> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dis.only(
          lr: 15.w,
        ),
        child: Column(
          children: [
            Text(
              "How many push-ups can you do at one time?",
              style: AppTextStyle.instance.w700.copyWith(
                fontSize: FontSizeConst.instance.largeFont,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            HBox(20.h),
            HBox(
              20.h,
            ),
            PushUpsListTile(
              text: "0~10 repeats",
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
              value: value1,
            ),
            HBox(
              20.h,
            ),
            HBox(
              20.h,
            ),
            PushUpsListTile(
              text: "10~20 repeats",
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
              value: value2,
            ),
            HBox(
              20.h,
            ),
            HBox(
              20.h,
            ),
            PushUpsListTile(
              text: "Over 20 repeats",
              onChanged: (bool? val) {
                if (value2 == true) {
                  setState(() {
                    value2 = !value2;
                  });
                } else if (value1 == true) {
                  setState(() {
                    value1 = !value1;
                  });
                }
                setState(() {
                  value3 = val!;
                });
              },
              value: value3,
            ),
            HBox(
              20.h,
            ),
          ],
        ),
      ),
    );
  }
}
