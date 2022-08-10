import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    color: Colors.black,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  canvasColor: Colors.black,
  fontFamily: 'NotoSansJP',
);
