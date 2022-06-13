import 'package:flutter/material.dart';

import '../colors.dart';
import '../strings.dart';

class CategorieWidget extends StatelessWidget {
  const CategorieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(right: 8, left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(115.0),
            color: index == 0 ? categoriesTextColor : unSlectedCategoriesColor,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Text(
            categories[index],
            style: TextStyle(
                color: index == 0 ? Colors.white : black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
