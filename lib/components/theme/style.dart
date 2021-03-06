import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  accentColor: const Color(0xFF494949),
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textSelectionHandleColor: Colors.black,
  textSelectionColor: Colors.black12,
  cursorColor: Colors.black,
  dividerColor: Colors.black,
  disabledColor: Colors.grey[600],
  primaryIconTheme: const IconThemeData(color: Colors.black),
  buttonColor: Colors.grey[600],
  bottomAppBarColor: Color(0xFFededed),
  inputDecorationTheme: InputDecorationTheme(
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    focusColor: Colors.black,
    labelStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: .5,
      fontFamily: 'Arial',
      fontSize: 16.0,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[600]),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
  ),
  dialogTheme: const DialogTheme(
    elevation: 1,
    contentTextStyle: TextStyle(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 2.0,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.black,
    textTheme: ButtonTextTheme.accent,
  ),
  accentTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    headline4: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.3,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    headline4: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.3,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline3: TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline1: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey[900],
  accentColor: Colors.white,
  scaffoldBackgroundColor: Colors.grey[900],
  disabledColor: Colors.black,
  backgroundColor: Colors.grey[900],
  textSelectionHandleColor: Colors.white,
  textSelectionColor: Colors.white12,
  cursorColor: Colors.white,
  dividerColor: Colors.white,
  primaryIconTheme: const IconThemeData(color: Colors.white),
  buttonColor: Colors.white,
  bottomAppBarColor: Color(0xFF1c1c1c),
  inputDecorationTheme: InputDecorationTheme(
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    focusColor: Colors.white,
    labelStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      letterSpacing: .5,
      fontFamily: 'Arial',
      fontSize: 16.0,
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[300]),
    ),
  ),
  dialogTheme: const DialogTheme(
    elevation: 0,
    contentTextStyle: TextStyle(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 2.0,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.white,
    textTheme: ButtonTextTheme.accent,
  ),
  applyElevationOverlayColor: true,
  accentTextTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.grey[800],
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    headline4: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.3,
      color: Colors.white,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    bodyText2: TextStyle(
      color: Colors.grey[400],
      fontWeight: FontWeight.w300,
      fontFamily: 'CircularStd',
    ),
    headline4: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.3,
      color: Colors.black,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline3: TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
    headline1: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Laca',
      fontStyle: FontStyle.italic,
    ),
  ),
);
