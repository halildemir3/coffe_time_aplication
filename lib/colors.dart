import 'dart:ui';

colorX(String color) {
  String newColor = '0xff' + color;

  newColor = newColor.replaceAll('#', '');

  int dartColor = int.parse(newColor);
  return Color(dartColor);
}

List<Color> buttonColor = [colorX("#B9845F"), colorX("#6A4225")];
Color textColor = colorX("#FFFFFF");
Color activeColor = colorX("#6A4225");
Color inActiveColor = colorX("#3F3F3F");
Color cardColor = colorX("#F5EDED");
Color capacinoWidgetBacGroundColor = colorX("#FFFFFF");
Color locationIcon = colorX("#8C6A52");
Color locationText = colorX("#010101");
Color categoriesTextColor = colorX("#8C6A52");
Color black = colorX("#000000");
Color textFieldColor = colorX("#F8F7FA");
Color unSlectedCategoriesColor = colorX("#F8F7FA");
Color backGroundColor = colorX("#FFFFFF");
Color bottomSheetBackGroundColor = colorX("#F8F7FA");
Color bottomSheetTabBarColor = colorX("#E6E6E9");
