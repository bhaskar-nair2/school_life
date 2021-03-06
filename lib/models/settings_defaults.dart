import 'package:flutter/material.dart';

abstract class BasicSettingsDefaults {
  // static const Brightness theme = Brightness.light;
  static const ThemeMode theme = ThemeMode.system;
  static const String firstName = 'Guest';
  static const String lastName = '';
}

abstract class ScheduleSettingsDefaults {
  // 1 is Monday, 7 is Sunday, etc...
  static const Map<String, bool> daysOfSchool = <String, bool>{
    '1': true,
    '2': true,
    '3': true,
    '4': true,
    '5': true,
    '6': false,
    '7': false,
  };
}
