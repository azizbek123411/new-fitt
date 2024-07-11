import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/main_button.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ListTile(
            title: Text(
              "hello",
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text(
                "hello",
                style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.smallFont,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.teal,
                ),
              ),
            ),),
      ),
    );
  }
}
