import 'package:black_tortoise/models/theme_model.dart';
import 'package:black_tortoise/routes/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeModel()),
      ],
      child: Consumer<ThemeModel>(
        builder: (builder, model, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FlixCard',
            theme: model.theme,
            routes: {
              '/home': (context) => HomeRoute(),
              '/search': (context) => SearchRoute(),
            },
            home: HomeRoute(),
          );
        },
      ),
    );
  }
}
