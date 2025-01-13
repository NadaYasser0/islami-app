import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaItem extends StatefulWidget {
  const SebhaItem({super.key});

  @override
  State<SebhaItem> createState() => _SebhaItemState();
}

class _SebhaItemState extends State<SebhaItem> {
  int counter = 0;
  List<String> title = ["سبحان الله", "الحمد لله", "لا اله الا الله", "الله اكبر"];
  double rotationAngle = 0;
  String currentTitle = "سبحان الله";

  void updateSebha() {
    setState(() {
      counter++;
      rotationAngle += pi / 30;

      if (counter == 30) {
        int currentIndex = title.indexOf(currentTitle);
        currentIndex = (currentIndex + 1) % title.length;
        currentTitle = title[currentIndex];
        counter = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Image.asset("assets/images/sebha decorate.png"),
        ),
        Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: InkWell(
                onTap: updateSebha,
                child: Transform.rotate(
                  angle: rotationAngle,
                  child: Image.asset("assets/images/SebhaBody 1.png"),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),

              Text(
                "$currentTitle",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
              SizedBox(
                height: 20,
              ),
              // هنا بنعرض العداد
              Text(
                "$counter",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
            ],
          ),
        )
      ],
    );
  }
}
