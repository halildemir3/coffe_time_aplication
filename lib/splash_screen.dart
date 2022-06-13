import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Get.to(WelcomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/pexels-ruslan-sikunov-11942622.jpg",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
