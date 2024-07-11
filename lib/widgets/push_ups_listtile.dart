
import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../config/font_size.dart';
import '../config/text_styles.dart';

class PushUpsListTile extends StatefulWidget {
  String text;
  void Function(bool? val) onChanged;
  bool value;

  PushUpsListTile({
    super.key,
    required this.text,
    required this.onChanged,
    required this.value,
  });

  @override
  State<PushUpsListTile> createState() => _PushUpsListTileState();
}

class _PushUpsListTileState extends State<PushUpsListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 80.h,
        decoration: BoxDecoration(
          color: widget.value?Colors.teal:Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: CheckboxListTile(
            title: Text(
              widget.text,
              style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.largeFont,
                  color: Colors.black),
            ),
            value: widget.value,
            onChanged:widget.onChanged,
          ),
        ));
  }
}
