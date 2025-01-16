import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_color/app_color.dart';

class CardRadio extends StatelessWidget {
  CardRadio(
      {super.key,
      required this.imageBG,
      required this.favIcon,
      required this.playIcon,
      required this.volumeIcon,
      required this.title});

  String imageBG;
  String title;
  IconData favIcon;
  IconData playIcon;
  IconData volumeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      padding: EdgeInsets.only(top: 16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.Primary,
      ),
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 27,
                    ),
                    Image.asset(
                      "assets/images/$imageBG",
                      width: double.infinity,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(favIcon),
                          color: Colors.black,
                          iconSize: 30,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(playIcon),
                          color: Colors.black,
                          iconSize: 40,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(volumeIcon),
                          color: Colors.black,
                          iconSize: 35,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
