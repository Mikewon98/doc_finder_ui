import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;

  static initSize(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;
  }
}

double getRelativeHeight(double percentage) {
  return percentage * SizeConfig.screenHeight!;
}

double getRelativeWidth(double percentage) {
  return percentage * SizeConfig.screenWidth!;
}
