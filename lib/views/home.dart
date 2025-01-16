import 'package:flutter/material.dart';
import 'package:islami/Widgets/bottom_nav_bar.dart';
import 'package:islami/views/Reciters.dart';
import 'package:islami/views/Time.dart';
import 'package:islami/views/radio1.dart';
import 'package:islami/views/sebha.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static String route = "/";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${getBackgroundImageName()}",
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: tabs[currentIndex],
        ),
      ]),
      bottomNavigationBar: BottomNavBar(onChange: (index) {
        currentIndex = index;
        setState(() {});
      }),
    );
  }

  List<Widget> tabs = [
    Reciters(),
    Reciters(),
    Sebha(),
    Radio1(),
    Time(),
  ];

  String getBackgroundImageName() {
    switch (currentIndex) {
      case 2:
        return "sebha_bg.png";
      case 3:
        return "radio_bg.png";
      case 4:
        return "Time Screen.png";
      default:
        return "sebha_bg.png";
    }
  }
}
