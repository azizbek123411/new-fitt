

import 'package:flutter/material.dart';
import 'package:newfit/utils/screen_utils.dart';

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

class _PlankState extends State<Plank> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  @override
  Widget build(BuildContext context) {
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
                  if (value2 == true) {
                    setState(() {
                      value2 = !value2;
                    });
                  } else if (value3 == true) {
                    setState(() {
                      value3 = !value3;
                    });
                  } else if (value4 == true) {
                    setState(() {
                      value4 = !value4;
                    });
                  }

                  setState(() {
                    value1 = val!;
                  });
                },
                value: value1,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "30~60 seconds",
                onChanged: (bool? val) {
                  if (value1 == true) {
                    setState(() {
                      value1 = !value1;
                    });
                  } else if (value3 == true) {
                    setState(() {
                      value3 = !value3;
                    });
                  } else if (value4 == true) {
                    setState(() {
                      value4 = !value4;
                    });
                  }

                  setState(() {
                    value2 = val!;
                  });
                },
                value: value2,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "60~120 seconds",
                onChanged: (bool? val) {
                  if (value2 == true) {
                    setState(() {
                      value2 = !value2;
                    });
                  } else if (value1 == true) {
                    setState(() {
                      value1 = !value1;
                    });
                  } else if (value4 == true) {
                    setState(() {
                      value4 = !value4;
                    });
                  }

                  setState(() {
                    value3 = val!;
                  });
                },
                value: value3,
              ),
              HBox(20.h),
              PushUpsListTile(
                text: "Over 120 seconds",
                onChanged: (bool? val) {
                  setState(() {
                    if (value2 == true) {
                      setState(() {
                        value2 = !value2;
                      });
                    } else if (value3 == true) {
                      setState(() {
                        value3 = !value3;
                      });
                    } else if (value1 == true) {
                      setState(() {
                        value1 = !value1;
                      });
                    }
                    value4 = val!;
                  });
                },
                value: value4,
              ),
              HBox(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
