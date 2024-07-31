import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/pages/workout_pages/profile_pages/faq_screen.dart';
import 'package:newfit/pages/workout_pages/profile_pages/feedback.dart';
import 'package:newfit/pages/workout_pages/profile_pages/myprofile.dart';
import 'package:newfit/pages/workout_pages/profile_pages/reminder_page.dart';
import 'package:newfit/pages/workout_pages/profile_pages/workout_screen.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/clumn_data.dart';
import 'package:newfit/widgets/profile_tile.dart';
import 'package:rating_dialog/rating_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int activeDays = 1;
  double duration = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: Dis.only(top: 80.h, lr: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade400,
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Welcome, my friend!",
                          style: AppTextStyle.instance.w700.copyWith(
                            fontSize: FontSizeConst.instance.mediumFont,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ColumnData(numb: 1, name: 'Active Days  '),
                            ColumnData(numb: 0, name: '  Duration'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              HBox(30.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ProfileTile(
                      title: "My Profile",
                      leading: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    ProfileTile(
                      title: "Workout settings",
                      leading: const Icon(
                        Icons.fitness_center,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkoutScreen(),
                          ),
                        );
                      },
                    ),
                    ProfileTile(
                      title: "Reminder",
                      leading: const Icon(
                        IconlyBold.notification,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReminderPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              HBox(20.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ProfileTile(
                      title: "Share",
                      leading: const Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),
                    ProfileTile(
                      title: "Rate Us",
                      leading: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => RatingDialog(
                            initialRating: 1,
                            title: const Text('Rate our application'),
                            image: const FlutterLogo(
                              size: 40,
                            ),
                            submitButtonText: 'Rate',
                            onSubmitted: (response) {},
                          ),
                        );
                      },
                    ),
                    ProfileTile(
                      title: "Common questions",
                      leading: const Icon(
                        Icons.lightbulb_rounded,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FaqScreen(),
                          ),
                        );
                      },
                    ),
                    ProfileTile(
                      title: "Feedback",
                      leading: const Icon(
                        IconlyBold.edit,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FeedbackScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
