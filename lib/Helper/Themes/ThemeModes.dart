import 'package:flutter/material.dart';



ThemeData light = ThemeData(
  brightness: Brightness.light,
  cardColor: Colors.black45,
  hintColor: Colors.white70,
  backgroundColor: Colors.white,
    dialogBackgroundColor:Colors.white38,
  dividerColor: Colors.black54,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black87),
    canvasColor: Colors.white,


);
ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    cardColor: Colors.white38,
    hintColor: Colors.black54,
    dividerColor: Colors.white70,
    dialogBackgroundColor:Colors.black.withOpacity(0.7),
  backgroundColor: Colors.black87,
  canvasColor: Colors.black54

);