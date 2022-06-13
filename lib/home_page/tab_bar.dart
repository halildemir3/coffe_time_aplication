import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class TopBar extends StatelessWidget {
  TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: .0, left: 15, right: 8),
            child: Icon(
              Icons.location_on_rounded,
              size: 32,
              color: locationIcon,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Current Location"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "İzmir Turkey",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: locationText),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.notifications_outlined,
                  size: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/profile2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
