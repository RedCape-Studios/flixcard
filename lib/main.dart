import 'package:black_tortoise/models/pages.dart';
import 'package:black_tortoise/models/theme.dart';
import 'package:black_tortoise/routes/home.dart';
import 'package:black_tortoise/routes/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/search.dart';
import 'package:black_tortoise/routes/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeModel()),
        ChangeNotifierProvider(create: (context) => PageModel()),
      ],
      child: Consumer<ThemeModel>(
        builder: (builder, model, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FlixCard',
            theme: model.theme,
            routes: {
              '/login': (context) => LogInRoute(),
              '/home': (context) => HomeRoute(),
              '/search': (context) => SearchRoute(),
            },
            home: Scaffold(
              appBar: AppBar(
                title: Text("login page",
                    style: TextStyle(
                      fontSize: 25,
                    )),
              ),
              body: LogInRoute(),
            ),
          );
        },
      ),
    );
  }
}
