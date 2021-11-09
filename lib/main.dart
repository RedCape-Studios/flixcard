import 'package:black_tortoise/backend/auth.dart';
import 'package:black_tortoise/models/login.dart';
import 'package:black_tortoise/models/pages.dart';
import 'package:black_tortoise/models/theme.dart';
import 'package:black_tortoise/routes/favourites.dart';
import 'package:black_tortoise/routes/home.dart';
import 'package:black_tortoise/routes/login.dart';
import 'package:black_tortoise/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes/search.dart';

void main() {
  Tokens.loadEnv();
  Auth();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeModel()),
        ChangeNotifierProvider(create: (context) => PageModel()),
        ChangeNotifierProvider(create: (context) => LoginModel()),
      ],
      child: Consumer<ThemeModel>(
        builder: (builder, model, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FlixCard',
            theme: model.theme,
            initialRoute: '/login',
            routes: {
              '/login': (context) => SignUpRoute(),
              '/home': (context) => HomeRoute(),
              '/search': (context) => SearchRoute(),
              '/favourites': (context) => FavouritesRoute(),
            },
          );
        },
      ),
    );
  }
}
