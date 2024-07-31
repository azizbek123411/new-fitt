import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: Dis.only(
          lr: 10.w,
          bottom: 100.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please tell us where we can improve',
              style: AppTextStyle.instance.w700.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
              ),
            ),
            HBox(30.h),
            Container(
              padding: Dis.only(lr: 10.w),
              height: 500.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  hintText:
                      'Please tell us more details about your feedback or suggestions',
                  hintStyle: AppTextStyle.instance.w300.copyWith(
                    fontSize: FontSizeConst.instance.smallFont,
                    color: Colors.grey.shade600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 30,
                child: const Icon(
                  IconlyBold.camera,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          margin: Dis.only(
            bottom: 10.h,
          ),
          height: 70.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Submit',
              style: AppTextStyle.instance.w900.copyWith(
                  fontSize: FontSizeConst.instance.extraLargeFont,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
