import 'package:flutter/material.dart';
import 'package:islami/Widgets/card_radio.dart';
import 'package:islami/Widgets/switch_radio.dart';
import 'package:islami/app_color/app_color.dart';

class Radio1 extends StatefulWidget {
  Radio1({super.key});

  static String route = "radio";

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Image.asset(
          "assets/images/Logo.png",
        ),
        SwitchRadio(),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: 8,
            itemBuilder: (context, index) {
              return CardRadio(
                  imageBG: "card radio bg.png",
                  favIcon: Icons.favorite_rounded,
                  playIcon: Icons.play_arrow_rounded,
                  volumeIcon: Icons.volume_up,
                  title: "Radio Ibrahim Al-Akdar");
            },
          ),
        )
      ],
    );
  }
}
