import 'package:flutter/material.dart';

class RowNextPray extends StatelessWidget {
  const RowNextPray({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(
          flex: 1,
        ),
        Text(
          "Next Pray - 02:32",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Spacer(
          flex: 1,
        ),
        Icon(Icons.volume_off_rounded),
      ],
    );
  }
}
