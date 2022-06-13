import 'package:demir_coffe/colors.dart';
import 'package:demir_coffe/home_page/home_page.dart';
import 'package:demir_coffe/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/pexels-kateryna-hnidash-10741774.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            welcomeOne,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
          spacer(),
          Text(
            welcomeTwo,
            style: TextStyle(inherit: false, fontSize: 14, color: textColor),
          ),
          spacer(),
          GestureDetector(
              onTap: () {
                Get.to(HomePage());
              },
              child: buildButton()),
        ],
      ),
    );
  }

  SizedBox spacer() {
    return SizedBox(
      height: 15,
    );
  }

  Padding buildButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: buttonColor),
            borderRadius: BorderRadius.circular(35),
            color: Colors.red),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle,
          ),
        ),
      ),
    );
  }

  var textStyle = TextStyle(
      fontSize: 30,
      inherit: false,
      fontWeight: FontWeight.bold,
      color: textColor);
}
