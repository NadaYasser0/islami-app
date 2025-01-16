import 'package:flutter/material.dart';
import 'package:islami/app_color/app_color.dart';

import '../Widgets/azkar.dart';
import '../Widgets/container_azkar.dart';
import '../Widgets/pray_time.dart';
import '../Widgets/row_next_pray.dart';
import '../Widgets/time_slider.dart';

class Time extends StatelessWidget {
  Time({super.key});

  static String route = "time";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image.asset(
          "assets/images/Logo.png",
        ),
        PrayTime(),
        SizedBox(
          height: 20,
        ),
        Row(
            children: [
          Text(
            "Azkar",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ]),
        Azkar(),
      ]),
    );
  }
}
