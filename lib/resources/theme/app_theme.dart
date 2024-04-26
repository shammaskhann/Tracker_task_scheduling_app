import 'package:flutter/material.dart';

const Color bluishColor = Color(0xFF4e5ae8);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFff4667);
const Color whiteColor = Color(0xFFFFFFFF);
const Color primaryColor = bluishColor;
const Color darkGreyColor = Color(0xFF121212);
Color darkHeaderColor = const Color(0xFF424242);

class AppTheme {
  static final light = ThemeData(
    primaryColor: primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );
  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkGreyColor,
    scaffoldBackgroundColor: darkGreyColor,
  );
}
