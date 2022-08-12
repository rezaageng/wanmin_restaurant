import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    color: Color.fromRGBO(18, 18, 18, 1),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  canvasColor: const Color.fromRGBO(18, 18, 18, 1),
  cardTheme: const CardTheme(color: Color.fromRGBO(24, 24, 24, 1)),
  fontFamily: 'NotoSansJP',
);
