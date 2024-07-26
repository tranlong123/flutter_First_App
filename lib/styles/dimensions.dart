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

  //fontSize
  static double get fontSize35 => screenHeight * 35 / 706;
  static double get fontSize14 => screenHeight * 14 / 706;
  static double get fontSize12 => screenHeight * 12 / 706;
  static double get fontSize30 => screenHeight * 30 / 706;
  static double get fontSize17 => screenHeight * 17 / 706;
  static double get fontSize10 => screenHeight * 10 / 706;
  static double get fontSize18 => screenHeight * 18 / 706;
  static double get fontSize16 => screenHeight * 16 / 706;

  //size box
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
  static double get signInBodyHeight => screenHeight * 321 / 706;
  static double get signUpBodyHeight => screenHeight * 614 / 706;
  static double get phoneNumberInputHeight => screenHeight * 42 / 706;
  static double get phoneNumberInputWidth => screenHeight * 197 / 706;
  static double get addImageSize => screenHeight * 54 / 706;
  static double get phoneIconSize => screenHeight * 22 / 706;
  static double get bottomSheetIconSize => screenHeight * 55 / 706;

}
