import 'package:demir_coffe/colors.dart';
import 'package:demir_coffe/model/coffe_model.dart';
import 'package:demir_coffe/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key, required this.model}) : super(key: key);
  final CoffeModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.width,
                decoration: BoxDecoration(),
                child: Image.asset(
                  model.image,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: Get.height * 0.57,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: bottomSheetBackGroundColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTitle(model.name),
                        _spacer15x(),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: bottomSheetTabBarColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildText(smallText, activeColor),
                              buildText(mediumText, inActiveColor),
                              buildText(largeText, inActiveColor),
                            ],
                          ),
                        ),
                        _spacer15x(),
                        buildTitle(aboutTitleText),
                        _spacer15x(),
                        Text(aboutText),
                        _spacer60x(),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: buttonColor),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: buildText(addToCardText, textColor),
                                width: 200,
                              ),
                              Container(
                                height: 35,
                                width: 1,
                                color: textColor,
                              ),
                              buildText("₺" + model.price, textColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  SizedBox _spacer15x() {
    return SizedBox(
      height: 15,
    );
  }

  SizedBox _spacer60x() {
    return SizedBox(
      height: 60,
    );
  }

  Text buildTitle(title) {
    return Text(
      title,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Text buildText(title, color) => Text(
        title,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: color),
      );
}
