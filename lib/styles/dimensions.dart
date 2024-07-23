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
  static double get textInputIconSize => screenHeight * 24 / 706;
  static double get textInputHeight => screenHeight * 60 / 706;
  static double get continueWithButtonWidth => screenHeight * 280 / 706;
  static double get continueWithButtonHeight => screenHeight * 50 / 706;
  static double get paddingHorizontal => screenHeight * 30 / 706;
  static double get ggAndFaceIconSize => screenHeight * 28 / 706;
  static double get headerWidth => screenHeight * 311 / 706;
  static double get headerHeight => screenHeight * 113 / 706;
  static double get backIconSize => screenHeight * 23 / 706;
  static double get fontSize35 => screenHeight * 35 / 706;
  static double get fontSize14 => screenHeight * 14 / 706;
  static double get signInBodyHeight => screenHeight * 321 / 706;
  static double get fontSize12 => screenHeight * 12 / 706;
}
