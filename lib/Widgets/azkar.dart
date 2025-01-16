import 'package:flutter/cupertino.dart';

import 'container_azkar.dart';

class Azkar extends StatelessWidget {
  const Azkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.only(top: 8),
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 1,
              childAspectRatio: 177 / 230),
          itemBuilder: (context, index) => ContainerAzkar()),
    )
    ;
  }
}
