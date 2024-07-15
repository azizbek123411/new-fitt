import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:provider/provider.dart';

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

class CheckBoxKnee extends ChangeNotifier {
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

class _KneeIssueState extends State<KneeIssue> {
  @override
  Widget build(BuildContext context) {
    final checkBoxProvider = Provider.of<CheckBoxKnee>(context);
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
                title: "No, I'm fine",
                subtitle: 'I do not any issues',
                leading: SvgPicture.asset(
                  "assets/svg/iam.svg",
                  height: 50.h,
                ),
                val: checkBoxProvider.value1,
              ),
              HBox(20.h),
              StartingListTile(
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
                title: 'Low impact',
                subtitle: 'Friendly to overweight people',
                leading: SvgPicture.asset(
                  "assets/svg/overweight.svg",
                  height: 50.h,
                ),
                val: checkBoxProvider.value2,
              ),
              HBox(20.h),
              StartingListTile(
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
                title: 'No jumping',
                subtitle: 'No noise, apartment friendly',
                leading: Image.asset(
                  "assets/images/knee.png",
                  height: 50.h,
                ),
                val: checkBoxProvider.value3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
