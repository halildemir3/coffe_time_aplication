import 'package:flutter/material.dart';

import '../colors.dart';

class GoodMorning extends StatelessWidget {
  const GoodMorning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning,Astha",
              style: TextStyle(
                fontSize: 25,
                color: locationIcon,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "What you want to order?",
              style: TextStyle(
                  fontSize: 25, color: black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            )
          ]),
    );
  }
}
