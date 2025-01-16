import 'package:flutter/material.dart';
import 'package:islami/Widgets/row_next_pray.dart';
import 'package:islami/Widgets/time_slider.dart';

import '../app_color/app_color.dart';

class PrayTime extends StatelessWidget {
  const PrayTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 301,
      width: 370,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/time_bg.png"), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFF856B3F),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [

                Column(
                  children: [
                    Text("16 Jul,",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("2024",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Spacer(flex: 1,),
                Column(
                  children: [
                    Text("Pray Time",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB5202020))), Text("Tuesday",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xE6202020))),
                  ],
                ),
                Spacer(flex: 1,),
                Column(
                  children: [
                    Text("09 Muh,",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("1446",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            TimeSlider(),
            SizedBox(height: 30,),
            RowNextPray(),
          ],
        ),
      ),
    );
  }
}
