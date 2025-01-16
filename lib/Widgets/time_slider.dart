import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Widgets/pray_time_container.dart';
import 'package:islami/Widgets/row_next_pray.dart';
import 'package:islami/app_color/app_color.dart';

class TimeSlider extends StatefulWidget {
  const TimeSlider({super.key});

  @override
  State<TimeSlider> createState() => _TimeSliderState();
}

class _TimeSliderState extends State<TimeSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 128.0,viewportFraction: 0.33),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return PrayTimeContainer();
          },
        );
      }).toList(),
    );

  }
}
