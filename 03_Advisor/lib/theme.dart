// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //***********************
  //! Static Colors
  //***********************

  //? Light Colors

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static final Color _lightTextColorPrimary = Colors.black;
  static final Color _appbarColorLight = Colors.blue;

  //? Dark Colors

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static final Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static final Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColordark = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;
  static const Color _accentColor = Color.fromRGBO(74, 217, 217, 1);

  //***********************
  //! Text Style - Light
  //***********************

  static TextStyle _lightHeadingText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
    fontStyle: FontStyle.italic,
    fontSize: 16,
  );

  static TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
  );

  //***********************
  //! Text Style - Dark
  //***********************

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextStyle _darkThemeBodyTextStyle = _lightBodyText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkThemeHeadingTextStyle,
    bodyLarge: _darkThemeBodyTextStyle,
  );

  //***********************
  //! Theme -- Light
  //***********************

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColorLight,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorLight),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColor,
      primaryContainer: _lightPrimaryVariantColor,
    ),
    textTheme: _lightTextTheme,
  );

  //***********************
  //! Theme -- Dark
  //***********************

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColordark,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _accentColor,
      onPrimary: _darkOnPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
    bottomAppBarTheme: BottomAppBarTheme(
      color: _appbarColordark,
    ),
  );
}
