import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrayTimeContainer extends StatelessWidget {
  const PrayTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 104,
        margin: EdgeInsets.symmetric(horizontal: 1.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF372C0861)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ASR',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              '04:38',
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'PM',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ));
  }
}
