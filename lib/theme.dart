import 'package:flutter/material.dart';

MaterialColor PrimaryMaterialColor = const MaterialColor(
  4294057160,
  <int, Color>{
    50: Color.fromRGBO(
      242,
      28,
      200,
      .1,
    ),
    100: Color.fromRGBO(
      242,
      28,
      200,
      .2,
    ),
    200: Color.fromRGBO(
      242,
      28,
      200,
      .3,
    ),
    300: Color.fromRGBO(
      242,
      28,
      200,
      .4,
    ),
    400: Color.fromRGBO(
      242,
      28,
      200,
      .5,
    ),
    500: Color.fromRGBO(
      242,
      28,
      200,
      .6,
    ),
    600: Color.fromRGBO(
      242,
      28,
      200,
      .7,
    ),
    700: Color.fromRGBO(
      242,
      28,
      200,
      .8,
    ),
    800: Color.fromRGBO(
      242,
      28,
      200,
      .9,
    ),
    900: Color.fromRGBO(
      242,
      28,
      200,
      1,
    ),
  },
);

ThemeData myTheme = ThemeData(
  fontFamily: "customFont",
  primaryColor: const Color(0xfff21cc8),
  primarySwatch: PrimaryMaterialColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color(0xfff21cc8),
      ),
    ),
  ),
);
