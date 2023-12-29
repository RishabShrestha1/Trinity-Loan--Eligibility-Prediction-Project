import 'package:flutter/material.dart';

ThemeData mytheme() {
  return ThemeData(
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
