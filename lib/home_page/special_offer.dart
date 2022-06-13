import 'package:flutter/material.dart';

import '../colors.dart';
import '../strings.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 10,
      color: cardColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/coffeİmage.jpg")),
                  borderRadius: BorderRadius.circular(25)),
              height: 130,
              width: 180,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            specialOfferBodyText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
