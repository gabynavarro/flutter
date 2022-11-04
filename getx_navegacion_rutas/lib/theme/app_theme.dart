import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  //primaryColor: Colors.purple[800],
  //accentColor: Colors.amber,
  //accentColorBrightness: Brightness.dark
  primaryColor: Colors.orange,
  accentColor: Colors.green,

  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 40.0, color: Colors.purple),
    button: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.orange,
  ),
);
