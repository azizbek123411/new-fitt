
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import '../../../config/font_size.dart';
import '../../../config/text_styles.dart';
import '../../../utils/sboxes.dart';

class YourHeight extends StatefulWidget {
  double initialHeight=160;
   YourHeight({super.key});

  @override
  State<YourHeight> createState() => _YourHeightState();
}

class _YourHeightState extends State<YourHeight> {
  late WeightSliderController heightController;


  @override
  void initState() {
    super.initState();
    heightController = WeightSliderController(
      initialWeight: widget.initialHeight,
      maxWeight: 250,
      minWeight: 100,
      interval: 1.0,
    );
  }




  @override
  void dispose() {
    heightController.dispose();
    super.dispose();
  }
  final box=Hive.box('planBox');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HBox(0.h),
            Text(
              "What is your height?",
              style: AppTextStyle.instance.w900.copyWith(
                  fontSize: FontSizeConst.instance.extraLargeFont,
                  color: Colors.black,),
            ),
            Text(
              "${widget.initialHeight.toStringAsFixed(1)} sm",
              style: AppTextStyle.instance.w900.copyWith(
                fontSize: FontSizeConst.instance.extraLargeFont,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/black_guy-removebg-preview.png",
                  height: widget.initialHeight+280,
                ),
                SizedBox(
                  width: 30.h,
                  child: VerticalWeightSlider(
                      height: 479.h,
                      decoration: const PointerDecoration(
                        width: 80.0,
                        height: 5.0,
                        largeColor: Color(0xFF898989),
                        mediumColor: Color(0xFFC5C5C5),
                        smallColor: Color(0xFFF0F0F0),
                        gap: 34.0,
                      ),
                      indicator: Container(
                        height: 8.0,
                        width: 100.0,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      controller: heightController,
                      onChanged: (value) {
                        setState(() {
                          widget.initialHeight = value;
                        });
                        box.put('height', widget.initialHeight??160);


                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
