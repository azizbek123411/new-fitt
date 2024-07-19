import 'package:flutter/material.dart';

import '../config/font_size.dart';
import '../config/text_styles.dart';
class ColumnData extends StatelessWidget {
  double numb;
  String name;
   ColumnData({super.key,required this.numb,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numb.toStringAsFixed(1),
          style: AppTextStyle.instance.w900.copyWith(
            fontSize: FontSizeConst.instance.biggestFont,
          ),
        ),
        Text(
          name,
          style: AppTextStyle.instance.w300.copyWith(
            fontSize: FontSizeConst.instance.smallFont,
          ),
        )
      ],
    );
  }
}
