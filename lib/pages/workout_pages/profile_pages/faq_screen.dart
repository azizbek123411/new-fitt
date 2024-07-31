import 'package:flutter/material.dart';
import 'package:newfit/config/font_size.dart';
import 'package:newfit/config/text_styles.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Common questions',
            style: AppTextStyle.instance.w600.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ExpansionTile(
                title: Text(
                  'Common question No${index + 1}',
                  style: AppTextStyle.instance.w900.copyWith(
                    fontSize: FontSizeConst.instance.mediumFont,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                        "Flutter is an open-source UI software development toolkit created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and provides a rich set of pre-designed widgets to create highly customizable and performant user interfaces. ",
                      style: AppTextStyle.instance.w700.copyWith(
                        fontSize: FontSizeConst.instance.smallFont,
                      ),),
                  )
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpended = expanded;
                  });
                },
              );
            }));
  }
}

class Item {
  String headText;
  String contentText;
  bool isExpanded = true;

  Item({
    required this.contentText,
    required this.headText,
    required this.isExpanded,
  });
}
