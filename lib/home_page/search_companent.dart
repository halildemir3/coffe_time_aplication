import 'package:flutter/material.dart';

import '../colors.dart';

class SearchCompanenet extends StatelessWidget {
  const SearchCompanenet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: textFieldColor,
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_outlined),
            suffixIcon: Icon(
              Icons.ballot_outlined,
              size: 30,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.transparent, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(30)),
            hintText: 'Search Coffe..',
          ),
        ),
      ),
    );
  }
}
