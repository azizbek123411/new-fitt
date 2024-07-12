import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/models/workout_list.dart';
import 'package:newfit/models/workout_model.dart';
import 'package:newfit/widgets/workout_tile.dart';
import 'package:provider/provider.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
final workouts=context.watch<WorkoutList>().exercise;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Plan",
          style: AppTextStyle.instance.w900.copyWith(
            fontSize: FontSizeConst.instance.largeFont,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final exercise = workouts[index];
          return WorkoutTile(
            workout: exercise,
          );
        },
      ),
    );
  }
}
