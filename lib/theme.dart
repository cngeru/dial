import 'package:dial_insurance/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: 'Comfortaa',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
      fontFamily: "Comfortaa",
    ),
    bodyText2: TextStyle(
      color: kTextColor,
      fontFamily: "Comfortaa",
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 18,
        fontFamily: "Comfortaa",
      ),
    ),
  );
}
