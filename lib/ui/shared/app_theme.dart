import 'package:flutter/material.dart';

class ZZAppTheme{
  // 1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  // 2.普通模式
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
    /// Typically, only the [brightness], [primaryColor], or [primarySwatch] are
    /// specified. That pair of values are used to construct the [colorScheme].
    primaryColor: Colors.cyan,
    splashColor: Color.fromRGBO(0, 0, 0, 0),
    highlightColor: Color.fromRGBO(0, 0, 0, 0),
  );

  // 3.暗黑模式
  static final Color darkTextColors = Colors.white;
  static final Color cellColors = Color(0xFF333333);

  static final ThemeData darkTheme = ThemeData(
    indicatorColor: Colors.white,
    primaryColor:Color(0xFF333333),
    splashColor: Color.fromRGBO(0, 0, 0, 0),
    highlightColor: Color.fromRGBO(0, 0, 0, 0),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 16
      )
    ),
  );

}