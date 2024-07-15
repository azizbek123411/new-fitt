import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:provider/provider.dart';

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

class CheckBoxPushUps extends ChangeNotifier {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  bool get isChecked1 => value1;

  bool get isChecked2 => value2;

  bool get isChecked3 => value3;

  void toggleCheckbox1(bool value) {
    value1 = value;
    notifyListeners();
  }

  void toggleCheckbox2(bool value) {
    value2 = value;
    notifyListeners();
  }

  void toggleCheckbox3(bool value) {
    value3 = value;
    notifyListeners();
  }
}

class _PushUpsState extends State<PushUps> {
  @override
  Widget build(BuildContext context) {
    final checkBoxProvider = Provider.of<CheckBoxPushUps>(context);
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
                if (checkBoxProvider.value2 == true) {
                  checkBoxProvider.toggleCheckbox2(
                    !checkBoxProvider.value2,
                  );
                } else if (checkBoxProvider.value3 == true) {
                  checkBoxProvider.toggleCheckbox3(
                    !checkBoxProvider.value3,
                  );
                }
                checkBoxProvider.toggleCheckbox1(val!);
              },
              value: checkBoxProvider.value1,
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
                if (checkBoxProvider.value1 == true) {
                  checkBoxProvider.toggleCheckbox1(
                    !checkBoxProvider.value1,
                  );
                } else if (checkBoxProvider.value3 == true) {
                  checkBoxProvider.toggleCheckbox3(
                    !checkBoxProvider.value3,
                  );
                }
                checkBoxProvider.toggleCheckbox2(val!);
              },
              value: checkBoxProvider.value2,
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
                if (checkBoxProvider.value2 == true) {
                  checkBoxProvider.toggleCheckbox2(
                    !checkBoxProvider.value2,
                  );
                } else if (checkBoxProvider.value1 == true) {
                  checkBoxProvider.toggleCheckbox1(
                    !checkBoxProvider.value1,
                  );
                }
                checkBoxProvider.toggleCheckbox3(val!);
              },
              value: checkBoxProvider.value3,
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
