import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_starter/themes/shadow.dart';
import 'package:google_fonts/google_fonts.dart';

const Color background = Color(0xFFF5F5F5);
const Color dark = Color(0xFF363A44);
const Color dark65 = Color.fromRGBO(54, 58, 68, 0.65);
const Color dark40 = Color.fromRGBO(54, 58, 68, 0.40);
const Color black65 = Color.fromRGBO(0, 0, 0, 0.65);
const Color black50 = Color.fromRGBO(0, 0, 0, 0.5);
const Color black25 = Color.fromRGBO(0, 0, 0, 0.25);

const Color white = Color(0xFFFFFFFF);
const Color white65 = Color.fromRGBO(256, 256, 256, 0.65);

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  backgroundColor: background,
  colorScheme: const ColorScheme.light(primary: dark),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white, backgroundColor: dark),
  appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          height: 20 / 18,
          color: white),
      foregroundColor: white,
      backgroundColor: dark),
  cardTheme: CardTheme(
    color: white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
    ),
  ),
  textTheme: const TextTheme(
    caption: TextStyle(
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        fontSize: 30,
        height: 35 / 30,
        color: white,
        shadows: [bottomTextShadow]),
    overline: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 20 / 14,
        color: white65,
        shadows: [bottomTextShadow]),
    subtitle1: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 20 / 18,
        color: white),

    /// Character on avatar circle
    subtitle2: TextStyle(),
    /// username on card widget
    headline1: TextStyle(),
    /// last message on card widget
    headline2: TextStyle(),
    /// time on card and message widgets
    headline3: TextStyle(),
    /// hint text in input fields
    headline4: TextStyle(),
    /// date on message screen
    headline5: TextStyle(),
    /// text on icon with text buttons on message screen
    headline6: TextStyle(),
    /// text on message widget
    bodyText1: TextStyle(),
    /// text on text field widgets
    bodyText2: TextStyle()


  ),
);

ThemeData darkTheme = lightTheme.copyWith();
