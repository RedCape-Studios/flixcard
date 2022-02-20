import 'package:flutter/material.dart';

enum ThemeType { dark, light }

final accentPrimaryColor = Color.fromARGB(255, 183, 21, 221);
final accentSecondaryColor = Color.fromARGB(255, 210, 40, 166);
final accentGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    accentPrimaryColor,
    accentSecondaryColor,
  ],
);

final primaryDarkColor = Color.fromARGB(255, 16, 16, 16);
final secondaryDarkColor = Color.fromARGB(255, 23, 23, 23);
final textDarkColor = Color.fromARGB(255, 245, 245, 245);

final primaryLightColor = Color.fromARGB(255, 239, 239, 239);
final secondaryLightColor = Color.fromARGB(255, 232, 232, 232);
final textLightColor = Color.fromARGB(255, 5, 5, 5);

final darkTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: textDarkColor,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryDarkColor,
  scaffoldBackgroundColor: primaryDarkColor,
  splashColor: accentPrimaryColor,
  appBarTheme: AppBarTheme(color: secondaryDarkColor),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: accentPrimaryColor,
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

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryLightColor,
  scaffoldBackgroundColor: primaryLightColor,
  splashColor: accentPrimaryColor,
  appBarTheme: AppBarTheme(color: secondaryLightColor),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: accentPrimaryColor,
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
  var primaryColor = primaryDarkColor;
  var secondaryColor = secondaryDarkColor;
  var textColor = textDarkColor;

  void setTheme(ThemeType type) {
    switch (type) {
      case ThemeType.dark:
        {
          theme = darkTheme;
          type = ThemeType.dark;
          primaryColor = primaryDarkColor;
          secondaryColor = secondaryDarkColor;
          textColor = textDarkColor;
          break;
        }
      case ThemeType.light:
        {
          theme = lightTheme;
          type = ThemeType.light;
          primaryColor = primaryLightColor;
          secondaryColor = secondaryLightColor;
          textColor = textLightColor;
          break;
        }
    }
    notifyListeners();
  }
}
