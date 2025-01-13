import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/app_color/app_color.dart';
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
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.Primary,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: _buildNavItem("1", 0), label: "Quran"),
            BottomNavigationBarItem(
                icon: _buildNavItem("2", 1), label: "Hadith"),
            BottomNavigationBarItem(
                icon: _buildNavItem("3", 2), label: "Tasbeh"),
            BottomNavigationBarItem(
                icon: _buildNavItem("4", 3), label: "Radio"),
            BottomNavigationBarItem(icon: _buildNavItem("5", 4), label: "Time"),
          ]),
    );
  }

  List<Widget> tabs = [
    Reciters(),
    Reciters(),
    Sebha(),
    Radio1(),
    Time(),
  ];

  Widget _buildNavItem(String numIcon, int index) {
    return currentIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color(0x99202020),
            ),
            child: ImageIcon(
              AssetImage("assets/images/icon$numIcon.png"),
            ),
          )
        : ImageIcon(
            AssetImage("assets/images/icon$numIcon.png"),
          );
  }

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
