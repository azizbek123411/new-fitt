import 'package:flutter/material.dart';
import 'package:newfit/models/workout_model.dart';

class WorkoutList extends ChangeNotifier {
  final List<Workout> workout = [
    Workout(
      name: "Lunges",
      description:
          "Stand with your feet shoulder width apart and your hands on your hips. Take a step forward with your right leg and lower your body until your right thigh is parallel with the floor. Then return and switch to the other leg. This exercise strengthens the quadriceps, gluteus maximus and hamstrings.",
      gifUrl: "assets/gifs/lunges.gif",
      times: 20,
    ),
    Workout(
      name: "Squats",
      description:
          "Stand with your feet shoulder width apart and your armas stretched forward, then lower your body until your things are parallel with the floor. Your knees should be extended in the same direction as your toes. Return to the start position and do the next rep. This works the thighs, hips buttocks, quads, hamstrings and lower body.",
      gifUrl: "assets/gifs/squats.gif",
      times: 20,
    ),
    Workout(
      name: "High steeping",
      description:
          "Run in place while pulling your knees as high as possible with each step. Keep your upper body upright during this exercise.",
      gifUrl: "assets/gifs/high_stepping.gif",
      times: 20,
    ),
    Workout(
      name: "Push-ups",
      description:
          "Lay prone on the ground with arms supporting your body. Keep your body straight while raising and lowering your body with your arms. This exercise works the chest, shoulders, triceps, back and legs.",
      gifUrl: "assets/gifs/pushup.gif",
      times: 20,
    ),
    Workout(
      name: "Reverse crunches",
      description:
          "Lie on your back with your knees up to 90 degree angle and your hands behind your head. Lift your upper body and thighs, and then stretch out. Repeat this exercise.",
      gifUrl: "assets/gifs/reverse_crunch.gif",
      times: 20,
    ),
    Workout(
      name: "Knee plank",
      description:
          "Perform the traditional plank position but with your knees on the ground and your feet crossed in the air. Keep your spine straight. Hold this position.",
      gifUrl: "assets/gifs/knee_plank.gif",
      times: 20,
    ),
    Workout(
      name: "Cobra stretch",
      description:
          "Lie down on your stomach and bend your elbows with your hands beneath your shoulders. Then push your chest up off the ground as far as possible. Hold this position for seconds.",
      gifUrl: "assets/gifs/cobra_stretch.gif",
      times: 20,
    ),
    Workout(
      name: "Triceps dips",
      description:
          "For the start position, sit ono the chair. Then move your hip off the chair with your hands holding the edge of the chair. SLowly bend and stretch your arms to make your body go up and down. This is a great exercise for the triceps.",
      gifUrl: "assets/gifs/triceps-dips.gif",
      times: 20,
    ),
    Workout(
      name: "Jumping jacks",
      description:
          "Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.",
      gifUrl: "assets/gifs/jumping-jack.gif",
      times: 20,
    ),
    Workout(
      name: "Long arm crunches",
      description:
          "Lie on your back with knees bent and feet flat on the floor. Put your arms straight over the top of your head. Lift your upper body off the floor, then slowly go back to the start position. The exercise increase abdominal endurance.",
      gifUrl: "assets/gifs/long-arm-crunch.gif",
      times: 20,
    ),
    Workout(
      name: "Bicycle crunches",
      description:
          "Lie on the floor with your hands behind your ears. Raise your knees and close your right elbow toward your left knee, then close your left elbow toward your right knee. Repeat the exercise.",
      gifUrl: "assets/gifs/bicycle_crunche.gif",
      times: 20,
    ),
    Workout(
      name: "Flutter kicks",
      description:
          "Lie on your back with your arms at your sides. Lift your legs and keep them as straight as you can. Then quickly raise your right leg up, and simultaneously lower your left leg. Switch legs and repeat.",
      gifUrl: "assets/gifs/flutter_kicks.gif",
      times: 20,
    ),
    Workout(
      name: "Abdominal crunches",
      description:
          "Lie on your back with your knees bent and your ars stretched forward. Then lift your upper body off the floor. Hold for o few seconds and lowly return. It primarily works the rectus abdominis muscle and the obliques.",
      gifUrl: "assets/gifs/abdominal_crunches.gif",
      times: 20,
    ),
    Workout(
      name: "Heel touch",
      description:
          "Lie on the ground with your legs bent and your arms by your sides. Slightly lift your upper body og the floor and make your hands alternately reach your heels.",
      gifUrl: "assets/gifs/heel_touch.gif",
      times: 20,
    ),
    Workout(
      name: "Leg raises",
      description:
          "Lie down on your back, and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor. Slowly bring your legs backs down and repeat the exercise",
      gifUrl: "assets/gifs/leg_raises.gif",
      times: 20,
    ),
  ];

  List<Workout> get exercise => workout;
}
