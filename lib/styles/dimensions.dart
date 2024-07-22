import 'package:flutter/material.dart';

class AppDimensions {
  static late double screenHeight;
  static late double screenWidth;
  static late double aspectRatio;
  //screen size
  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    aspectRatio = size.aspectRatio;
  }

  static double get customFontSize => screenHeight * 18 / 706;
  static double get btAuthWidth => screenHeight * 208 / 706;
  static double get btAuthHeight => screenHeight * 58 / 706;
  static double get containerBtAuthWidth => screenHeight * 288 / 706;
  static double get containerBtAuthHeight => screenHeight * 230 / 706;
  static double get containerWellcome => screenHeight * 230 / 706;

}
