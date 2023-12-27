import 'package:flutter/material.dart';

Theme containerTheme = Theme(
  data: mytheme(),
  child: Container(
    height: 100,
    width: 100,
    color: Colors.red,
  ),
);
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
