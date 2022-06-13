import 'package:demir_coffe/colors.dart';
import 'package:demir_coffe/home_page/search_companent.dart';
import 'package:demir_coffe/home_page/special_offer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demir_coffe/home_page/tab_bar.dart';
import '../choice_card.dart';
import '../strings.dart';
import 'categoriesWidget.dart';
import 'good_morning.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            _spacer(),
            GoodMorning(),
            SearchCompanenet(),
            _categoriesText(categoriesText),
            CategorieWidget(),
            ChoiceWidget(),
            _spacer(),
            _categoriesText(specialOfferTitleText),
            _spacer(),
            SpecialOfferCard()
          ],
        ),
      ),
    );
  }

  Padding _categoriesText(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
    );
  }

  SizedBox _spacer() {
    return SizedBox(
      height: 10,
    );
  }
}
