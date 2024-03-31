import 'package:flutter/material.dart';
import 'theme_colors.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: ThemeColors.purple,
  primaryColor: ThemeColors.purple,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge:  TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
  )
);
