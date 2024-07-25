import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/screen_utils.dart';

class MyProfile extends StatefulWidget {
  MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

final dateController = TextEditingController();

class _MyProfileState extends State<MyProfile> {
  void selectData(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      String formattedTime = DateFormat('dd/MM/yyyy').format(DateTime
          .now());

      setState(() {
        dateController.text =
            formattedTime;
      });
    } else {
      print("Date is not selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'My Profile',
          style: AppTextStyle.instance.w900.copyWith(
            fontSize: FontSizeConst.instance.largeFont,
          ),
        ),
      ),
      body: Container(
        height: 150.h,
        width: double.infinity,
        padding: Dis.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                selectData(context);
              },
              title: Text(
                'Date of Birth',
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.mediumFont,
                ),
              ),
              subtitle: Text(dateController.text),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {
                selectData(context);
              },
              title: Text(
                'Privacy & Policy',
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.mediumFont,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
