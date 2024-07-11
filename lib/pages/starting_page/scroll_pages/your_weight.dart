
import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/app_padding.dart';
import '../../../utils/sboxes.dart';

class YourWeight extends StatefulWidget {
  const YourWeight({super.key});

  @override
  State<YourWeight> createState() => _YourWeightState();
}

class _YourWeightState extends State<YourWeight> {
  late WeightSliderController weightSliderController;
  double initialWeight=50;
  @override
  void initState() {
    super.initState();
    weightSliderController = WeightSliderController(
      initialWeight: initialWeight,
      maxWeight: 150,
      minWeight: 30,

      interval: 1.0,
    );
  }

  @override
  void dispose() {
    weightSliderController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HBox(30.h),
            Padding(
              padding: Dis.only(lr: 40.w
              ),
              child: Text(
                "What is your current weight?",
                style: AppTextStyle.instance.w900.copyWith(
                  fontSize: FontSizeConst.instance.extraLargeFont,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

            ),
            HBox(50.h),
            Text("${initialWeight.toStringAsFixed(1)} kg",  style: AppTextStyle.instance.w900.copyWith(
              fontSize: FontSizeConst.instance.extraLargeFont,
              color: Colors.black,
            ),),
            VerticalWeightSlider(
                height: 479.h,
                decoration: const PointerDecoration(
                  width: 80.0,
                  height: 5.0,
                  largeColor: Color(0xFF898989),
                  mediumColor: Color(0xFFC5C5C5),
                  smallColor: Color(0xFFF0F0F0),
                  gap: 34.0,
                ),
                isVertical: false,
                indicator: Container(
                  height: 8.0,
                  width: 100.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                controller: weightSliderController,
                onChanged: (value) {
                  setState(() {
                    initialWeight = value;
                  });
                }),
          ],

        ),
      ),
    );
  }
}
