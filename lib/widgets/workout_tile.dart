import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/models/workout_model.dart';

class WorkoutTile extends StatelessWidget {
  final Workout workout;

  const WorkoutTile({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ListTile(
          title: Text(
            workout.name,style: AppTextStyle.instance.w900.copyWith(
            fontSize: FontSizeConst.instance.largeFont,
          ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.arrowRight),
          ),
        ),
      ),
    );
  }
}
