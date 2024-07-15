
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:provider/provider.dart';

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
class CheckBox extends ChangeNotifier{
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool get isChecked1=>  value1;
  bool get isChecked2=>  value2;
  bool get isChecked3=>  value3;
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
class _ChoosePlanState extends State<ChoosePlan> {


  @override
  Widget build(BuildContext context) {
    final checkBoxProvider=Provider.of<CheckBox>(context);
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
                if(checkBoxProvider.value2==true){
                 checkBoxProvider.toggleCheckbox2(val!);
                }else if(checkBoxProvider.value3==true){
                  checkBoxProvider.toggleCheckbox3(val!);
                }
                checkBoxProvider.toggleCheckbox1(val!);

              },
              leading: SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/noun-layer-3320827.svg",
                  height: 40.h,
                ),
              ),
              title: 'Beginner',
              subtitle: "5-10 min a day",
              val:checkBoxProvider.isChecked1,
            ),
            HBox(15.h),
            StartingListTile(
              onChanged: (bool? val) {
                if(checkBoxProvider.value1==true){
                  checkBoxProvider.toggleCheckbox1(val!);
                }else if(checkBoxProvider.value3==true){
                  checkBoxProvider.toggleCheckbox3(val!);
                }
                checkBoxProvider.toggleCheckbox2(val!);
              },
              leading: SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/noun-layer-5308824.svg",
                  height: 40.h,
                ),
              ),
              title: 'Intermediate',
              subtitle: "10-20 min a day",
              val: checkBoxProvider.value2,
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
              val: checkBoxProvider.value3,
              onChanged: (bool? val) {
                if(checkBoxProvider.value2==true){
                  checkBoxProvider.toggleCheckbox2(val!);
                }else if(checkBoxProvider.value1==true){
                  checkBoxProvider.toggleCheckbox1(val!);
                }
                checkBoxProvider.toggleCheckbox3(val!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
