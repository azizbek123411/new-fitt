import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';
import 'package:newfit/utils/app_padding.dart';
import 'package:newfit/utils/sboxes.dart';
import 'package:newfit/utils/screen_utils.dart';
import 'package:newfit/widgets/profile_tile.dart';

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
                          children: [
                            Column(
                              children: [
                                Text(
                                  activeDays.toString(),
                                  style: AppTextStyle.instance.w700.copyWith(
                                    fontSize:
                                        FontSizeConst.instance.biggestFont,
                                  ),
                                ),
                                Text(
                                  "Active Days",
                                  style: AppTextStyle.instance.w200.copyWith(
                                    fontSize: FontSizeConst.instance.mediumFont,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  duration.toString(),
                                  style: AppTextStyle.instance.w700.copyWith(
                                    fontSize:
                                        FontSizeConst.instance.biggestFont,
                                  ),
                                ),
                                Text(
                                  "     Duration",
                                  style: AppTextStyle.instance.w200.copyWith(
                                    fontSize: FontSizeConst.instance.mediumFont,
                                  ),
                                ),
                              ],
                            ),
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
                      onTap: () {},
                    ),  ProfileTile(
                      title: "Workout settings",
                      leading: const Icon(
                        Icons.fitness_center,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),  ProfileTile(
                      title: "Reminder",
                      leading: const Icon(
                        IconlyBold.notification,
                        color: Colors.grey,
                      ),
                      onTap: () {},
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
                    ),  ProfileTile(
                      title: "Rate Us",
                      leading: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),  ProfileTile(
                      title: "Common questions",
                      leading: const Icon(
                        Icons.lightbulb_rounded,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    ),
                    ProfileTile(
                      title: "Feedback",
                      leading: const Icon(
                        IconlyBold.edit,
                        color: Colors.grey,
                      ),
                      onTap: () {},
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
