import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: const TextTheme(
    headline6: TextStyle(color: Colors.black),
  ),
  fontFamily: 'NotoSansJP',
);
