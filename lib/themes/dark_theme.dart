import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xff2B2B2B),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
      textStyle: MaterialStateProperty.all(TextStyle(color: Colors.black)),
    ),
  ),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xff323232),
  backgroundColor: Color(0xff323232),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xff2B2B2B),
    unselectedItemColor: Colors.white60,
    selectedItemColor: Colors.lightBlueAccent,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: Color(0xff2B2B2B),
    elevation: 0.5,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white
    ),
    bodyText2: TextStyle(
      color: Colors.white
    )
  )
);
