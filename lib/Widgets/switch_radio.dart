import 'package:flutter/material.dart';
import 'package:islami/app_color/app_color.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SwitchRadio extends StatelessWidget {
  const SwitchRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ToggleSwitch(
        minWidth: double.infinity,
        minHeight: 40.0,
        initialLabelIndex: 0,
        cornerRadius: 12.0,
        activeFgColor: Color(0xFF202020),
        inactiveBgColor: Color(0xB3202020),
        inactiveFgColor: Colors.white,
        radiusStyle: true,

        totalSwitches: 2,
        customTextStyles: [
          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
        ],
        labels: ["Radio", "Reciters"],

        activeBgColors: [
          [AppColor.Primary, AppColor.Primary],
          [AppColor.Primary, AppColor.Primary]
        ],
        animate: true,
        // with just animate set to true, default curve = Curves.easeIn
        curve: Curves.bounceInOut,
        // animate must be set to true when using custom curve
        onToggle: (index) {
          print('switched to: $index');
        },
      ),
    );
  }
}
