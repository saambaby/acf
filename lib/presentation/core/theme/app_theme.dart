// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppTheme {
  static const Color _scaffoldColorLight = Color(0xfff5f5f5);

  static const Color _primaryColorLight = Color(0xff000000);
  static const Color _buttonColor = Color(0xffF05454);

  static const Color _secondaryColorLight = Color(0xff30475E);

  static const Color _errorColorLight = Color(0xffb00020);

  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: _primaryColorLight,
      primaryColorDark: _buttonColor,
      primaryColorLight: _primaryColorLight,
      errorColor: _errorColorLight,
      scaffoldBackgroundColor: _scaffoldColorLight,
      disabledColor: Colors.white.withOpacity(0.15),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: _primaryColorLight,
        primaryVariant: _primaryColorLight,
        secondary: _secondaryColorLight,
        secondaryVariant: _scaffoldColorLight,
        error: _errorColorLight,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(32),
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(28),
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(24),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.75,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(20),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.50,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(18),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
          color: Colors.black,
        ),

        headline6: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(16),
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(16),
          letterSpacing: 0.15,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(14),
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        caption: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(12),
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(16),
          letterSpacing: 0.5,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(14),
          letterSpacing: 0.25,
          color: Colors.black,
        ),

        //BUTTON
        button: TextStyle(
          fontFamily: 'CircularStd',
          fontSize: rf(11),
          letterSpacing: 1.25,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
