import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../Widgets/sebha_item.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});
  static String route = "sebha";

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/Logo.png"),
        Center(
          child: Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            child: SebhaItem(),
          ),
        ),
      ],
    );
  }
}