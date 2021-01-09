import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData light = ThemeData(
    primaryColor: Color(0xff3484F6),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0xff3484F6),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: IconThemeData(
        color: Color(0xff3484F6),
      ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xff3484F6),
        fontSize: 18,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: Colors.black38,
      ),
      bodyText2: TextStyle(
        color: Colors.black87,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: new TextStyle(
        color: Color(0xff3484F6),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: BorderSide(
          color: Colors.blueGrey,
        ),
      ),
    ),
  );
}
