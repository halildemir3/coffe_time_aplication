import 'package:demir_coffe/order_page/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';
import 'model/coffe_model.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: Item.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 14.0),
          child: InkWell(
            onTap: () {
              Get.bottomSheet(
                  OrderScreen(
                    model: Item[index],
                  ),
                  isScrollControlled: true,
                  enterBottomSheetDuration: Duration(milliseconds: 10));
            },
            child: Card(
              elevation: 10,
              color: cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: capacinoWidgetBacGroundColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Item[index].image)),
                          borderRadius: BorderRadius.circular(15)),
                      height: 100,
                      width: 140,
                    ),
                    Text(
                      Item[index].name,
                      style: TextStyle(color: black, fontSize: 20),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₺${Item[index].price}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: locationIcon, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: backGroundColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
