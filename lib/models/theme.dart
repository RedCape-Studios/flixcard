import 'package:flutter/material.dart';

enum ThemeType { dark, light }

final TextStyle textStyle = TextStyle(
    fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.normal);

final Color globalDarkColor = Color.fromARGB(255, 39, 42, 67);
final Color secondaryDarkColor = Color.fromARGB(255, 20, 23, 51);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: globalDarkColor,
  scaffoldBackgroundColor: globalDarkColor,
  splashColor: Color.fromARGB(255, 111, 116, 252),
  appBarTheme: AppBarTheme(color: Color.fromARGB(255, 20, 23, 51)),
  textTheme: TextTheme(
    headline1: textStyle,
    headline2: textStyle,
    headline3: textStyle,
    headline4: textStyle,
    headline5: textStyle,
    headline6: textStyle,
  ),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color.fromARGB(255, 209, 210, 240),
  splashColor: Color.fromARGB(255, 111, 116, 252),
  scaffoldBackgroundColor: Color.fromARGB(255, 209, 210, 240),
  appBarTheme: AppBarTheme(color: Color.fromARGB(255, 136, 142, 188)),
);

class ThemeModel extends ChangeNotifier {
  var theme = darkTheme;
  var globalColor = globalDarkColor;
  var secondaryColor = secondaryDarkColor;

  void setTheme(ThemeType type) {
    switch (type) {
      case ThemeType.dark:
        {
          theme = darkTheme;
          break;
        }
      case ThemeType.light:
        {
          theme = lightTheme;
          break;
        }
    }
    notifyListeners();
  }
}
