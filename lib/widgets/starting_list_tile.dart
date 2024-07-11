
import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../config/font_size.dart';
import '../config/text_styles.dart';
import '../utils/app_padding.dart';

class StartingListTile extends StatefulWidget {
  String title;
  String subtitle;
  Widget? leading;
  bool val;
  void Function(bool? val) onChanged;


  StartingListTile({
    super.key,
    this.leading,
    required this.val,
    required this.title,
    required this.subtitle,
    required this.onChanged,
  });

  @override
  State<StartingListTile> createState() => _StartingListTileState();
}

class _StartingListTileState extends State<StartingListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dis.only(top: 5.h),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.val?Colors.teal:Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CheckboxListTile(
        title: Text(
          widget.title,
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.mediumFont,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          widget.subtitle,
          style: AppTextStyle.instance.w400.copyWith(
            fontSize: FontSizeConst.instance.smallFont,
            color: Colors.grey.shade700,
          ),
        ),
        value: widget.val,
        onChanged: widget.onChanged
      ),
    );
  }
}
