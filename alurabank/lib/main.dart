import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(Alurabank());
}

class Alurabank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alurabank",
      home: Home(),
      theme: appTheme,
    );
  }
}

