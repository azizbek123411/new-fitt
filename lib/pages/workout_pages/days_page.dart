import 'package:flutter/material.dart';
import 'package:newfit/widgets/days_tile.dart';

class DaysPage extends StatefulWidget {
  static const String id = 'days';

  const DaysPage({super.key});

  @override
  State<DaysPage> createState() => _DaysPageState();
}

class _DaysPageState extends State<DaysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            for (var i = 1; i <31; ) {
              return DaysTile(days: "Day $i", times: "10 minutes");
            }
            return null;
          }),
    );
  }
}
