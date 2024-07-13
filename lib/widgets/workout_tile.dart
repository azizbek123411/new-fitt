import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/models/workout_model.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';

import '../utils/app_padding.dart';

class WorkoutTile extends StatelessWidget {
  final Workout workout;

  const WorkoutTile({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.only(tb: 8.h),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: Dis.only(
                      lr: 10.w,
                      tb: 10.h,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                workout.name,
                                style: AppTextStyle.instance.w900.copyWith(
                                  fontSize: FontSizeConst.instance.largeFont,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.cancel,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          HBox(20.h),
                          Center(
                            child:Image.asset(workout.gifUrl,height: 150.h,),
                          ),
                          HBox(20.h),
                          Text(
                            "Description",
                            style: AppTextStyle.instance.w600.copyWith(
                                fontSize: FontSizeConst.instance.largeFont,
                                color: Colors.teal.shade700),
                          ),
                          HBox(10.h),
                          Text(
                            workout.description,
                            style: AppTextStyle.instance.w700.copyWith(
                              fontSize: FontSizeConst.instance.mediumFont,
                            ),
                          ),
                          HBox(20.h),
                          RichText(
                            text: TextSpan(
                                text: "Duration: ",
                                style: AppTextStyle.instance.w600.copyWith(
                                    fontSize: FontSizeConst.instance.largeFont,
                                    color: Colors.teal.shade700),
                                children: [
                                  TextSpan(
                                    text: workout.times.toString(),
                                    style: AppTextStyle.instance.w700.copyWith(
                                        fontSize:
                                            FontSizeConst.instance.mediumFont,
                                        color: Colors.black),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            leading: Image.asset(workout.gifUrl),
            title: Text(
              workout.name,
              style: AppTextStyle.instance.w900.copyWith(
                fontSize: FontSizeConst.instance.largeFont,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios)),
      ),
    );
  }
}
