import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/screen_utils.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  bool reminderValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Reminder',
          style: AppTextStyle.instance.w700,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 100.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  '22:00',
                  style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.largeFont,
                  ),
                ),
                trailing: Switch(
                  activeColor: Colors.teal,
                  inactiveThumbColor: Colors.grey,
                  value: reminderValue,
                  onChanged: (bool value) {
                    setState(() {
                      reminderValue = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        backgroundColor: Colors.teal,
        child:const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
