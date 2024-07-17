import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';

class ProfileTile extends StatelessWidget {
  Icon leading;
  String title;
  Widget? subtitle;
  void Function() onTap;

  ProfileTile({
    super.key,
    required this.title,
    required this.leading,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyle.instance.w200.copyWith(
          fontSize: FontSizeConst.instance.mediumFont,
        ),
      ),
      subtitle: subtitle,
      leading: leading,
      trailing: IconButton(
        onPressed: onTap,
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
      ),
    );
  }
}
