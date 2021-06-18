import 'dart:ui';

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.pinkAccent,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
      textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
    ),
  ),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.pinkAccent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.black54,
    selectedItemColor: Colors.pinkAccent,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: Colors.pinkAccent,
    elevation: 0,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
            color: Colors.black
        ),
        bodyText2: TextStyle(
            color: Colors.black
        )
    )
);
