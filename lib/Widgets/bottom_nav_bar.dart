import 'package:flutter/material.dart';

import '../app_color/app_color.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key, required this.onChange});

  Function onChange;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: AppColor.Primary,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {
          currentIndex = value;
          setState(() {
            widget.onChange(currentIndex);
          });
        },
        items: [
          BottomNavigationBarItem(icon: _buildNavItem("1", 0), label: "Quran"),
          BottomNavigationBarItem(icon: _buildNavItem("2", 1), label: "Hadith"),
          BottomNavigationBarItem(icon: _buildNavItem("3", 2), label: "Tasbeh"),
          BottomNavigationBarItem(icon: _buildNavItem("4", 3), label: "Radio"),
          BottomNavigationBarItem(icon: _buildNavItem("5", 4), label: "Time"),
        ]);
  }

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
}
