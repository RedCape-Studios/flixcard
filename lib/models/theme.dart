import 'package:flutter/material.dart';

enum ThemeType { dark, light }

final Color globalDarkColor = Color.fromARGB(255, 19, 19, 19);
final Color secondaryDarkColor = Color.fromARGB(255, 19, 19, 19);
final Color textDarkColor = Color.fromARGB(255, 245, 245, 245);
final Color accentDarkColor = Color.fromARGB(255, 92, 90, 225);

final Color globalLightColor = Color.fromARGB(255, 136, 142, 188);
final Color secondaryLightColor = Color.fromARGB(255, 229, 230, 250);
final Color accentLightColor = Color.fromARGB(255, 111, 116, 252);

final TextStyle darkTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: textDarkColor,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: globalDarkColor,
  scaffoldBackgroundColor: globalDarkColor,
  splashColor: accentDarkColor,
  appBarTheme: AppBarTheme(color: secondaryDarkColor),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: accentDarkColor,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  textTheme: TextTheme(
    headline1: darkTextStyle,
    headline2: darkTextStyle,
    headline3: darkTextStyle,
    headline4: darkTextStyle,
    headline5: darkTextStyle,
    headline6: darkTextStyle,
  ),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: globalLightColor,
  scaffoldBackgroundColor: globalLightColor,
  splashColor: accentLightColor,
  appBarTheme: AppBarTheme(color: secondaryLightColor),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: accentLightColor,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  textTheme: TextTheme(
    headline1: darkTextStyle,
    headline2: darkTextStyle,
    headline3: darkTextStyle,
    headline4: darkTextStyle,
    headline5: darkTextStyle,
    headline6: darkTextStyle,
  ),
);

class ThemeModel extends ChangeNotifier {
  var theme = darkTheme;
  var type = ThemeType.dark;
  var globalColor = globalDarkColor;
  var secondaryColor = secondaryDarkColor;
  var accentColor = accentDarkColor;

  void setTheme(ThemeType type) {
    switch (type) {
      case ThemeType.dark:
        {
          theme = darkTheme;
          type = ThemeType.dark;
          globalColor = globalDarkColor;
          secondaryColor = secondaryDarkColor;
          accentColor = accentDarkColor;
          break;
        }
      case ThemeType.light:
        {
          theme = lightTheme;
          type = ThemeType.light;
          globalColor = globalLightColor;
          secondaryColor = secondaryLightColor;
          accentColor = accentLightColor;
          break;
        }
    }
    notifyListeners();
  }
}
