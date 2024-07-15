

import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:provider/provider.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/app_padding.dart';
import '../../../utils/sboxes.dart';
import '../../../widgets/push_ups_listtile.dart';

class Plank extends StatefulWidget {
  const Plank({super.key});

  @override
  State<Plank> createState() => _PlankState();
}

class CheckBoxPlanks extends ChangeNotifier {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  bool get isChecked1 => value1;

  bool get isChecked2 => value2;

  bool get isChecked3 => value3;
  bool get isChecked4 => value3;

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
  void toggleCheckbox4(bool value){
    value4=value;
    notifyListeners();
  }
}

class _PlankState extends State<Plank> {
  @override
  Widget build(BuildContext context) {
    final checkBoxProvider=Provider.of<CheckBoxPlanks>(context);
    return Scaffold(
      body: Padding(
        padding: Dis.only(lr: 15.w, tb: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "How long can you hold a plank?",
                style: AppTextStyle.instance.w900.copyWith(
                  fontSize: FontSizeConst.instance.largeFont,
                ),
              ),
              HBox(30.h),
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
                    "assets/images/plank-removebg-preview.png",
                    height: 60.h,
                  ),
                  title: Text(
                    "Your coach will design a weight loss plan for you to suit you best",
                    style: AppTextStyle.instance.w500.copyWith(
                        fontSize: FontSizeConst.instance.smallFont,
                        color: Colors.black),
                  ),
                ),
              ),
              HBox(30.h),
              PushUpsListTile(
                text: "0~30 seconds",
                onChanged: (bool? val) {
                  if(checkBoxProvider.value2==true){
                    checkBoxProvider.toggleCheckbox2(!checkBoxProvider.value2,);
                  }else if(checkBoxProvider.value3==true){
                    checkBoxProvider.toggleCheckbox3(!checkBoxProvider.value3,);
                  }
                  else if(checkBoxProvider.value4==true){
                    checkBoxProvider.toggleCheckbox4(!checkBoxProvider.value4,);
                  }
                  checkBoxProvider.toggleCheckbox1(val!);
                },
                value: checkBoxProvider.value1,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "30~60 seconds",
                onChanged: (bool? val) {
    if(checkBoxProvider.value1==true){
    checkBoxProvider.toggleCheckbox1(!checkBoxProvider.value1,);
    }else if(checkBoxProvider.value3==true){
    checkBoxProvider.toggleCheckbox3(!checkBoxProvider.value3,);
    }else if(checkBoxProvider.value4==true){
      checkBoxProvider.toggleCheckbox4(!checkBoxProvider.value4,);
    }
    checkBoxProvider.toggleCheckbox2(val!);},
                value: checkBoxProvider.value2,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "60~120 seconds",
                onChanged: (bool? val) {
                  if(checkBoxProvider.value1==true){
                    checkBoxProvider.toggleCheckbox1(!checkBoxProvider.value1,);
                  }else if(checkBoxProvider.value2==true){
                    checkBoxProvider.toggleCheckbox2(!checkBoxProvider.value2,);
                  }else if(checkBoxProvider.value4==true){
                    checkBoxProvider.toggleCheckbox4(!checkBoxProvider.value4,);
                  }
                  checkBoxProvider.toggleCheckbox3(val!);
                },
                value: checkBoxProvider.value3,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "Over 120 seconds",
                onChanged: (bool? val) {
                  if(checkBoxProvider.value1==true){
                    checkBoxProvider.toggleCheckbox1(!checkBoxProvider.value1,);
                  }else if(checkBoxProvider.value3==true){
                    checkBoxProvider.toggleCheckbox3(!checkBoxProvider.value3,);
                  }else if(checkBoxProvider.value2==true){
                    checkBoxProvider.toggleCheckbox2(!checkBoxProvider.value2,);
                  }
                  checkBoxProvider.toggleCheckbox4(val!);
                },
                value: checkBoxProvider.value4,
              ),
              HBox(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
