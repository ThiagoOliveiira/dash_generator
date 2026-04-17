import 'package:flutter/material.dart';

abstract class AppColorsTokens {
  // Palette (Cores puras)
  static const Color blue = Color(0xFF0052CC);
  static const Color blueDark = Color(0xFF0747A6);
  static const Color blueLight = Color(0xFFE9F2FF);
  static const Color green = Color(0xFF36B37E);
  static const Color red = Color(0xFFDE350B);
  static const Color grey900 = Color(0xFF172B4D);
  static const Color grey600 = Color(0xFF5E6C84);
  static const Color grey200 = Color(0xFFEBECF0);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Mapeamento para Light Mode
  static const Color primaryLight = blue;
  static const Color onPrimaryLight = white;

  static const Color secondaryLight = grey600;
  static const Color onSecondaryLight = white;

  static const Color backgroundLight = Color(0xFFF4F5F7);
  static const Color onBackgroundLight = grey900;

  static const Color surfaceLight = white;
  static const Color onSurfaceLight = grey900;
  static const Color surfaceVariantLight = grey200;

  static const Color outlineLight = grey200;
}
