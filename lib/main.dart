import 'package:black_tortoise/routes/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Tortoise',
      routes: {
        '/home': (context) => HomeRoute(),
      },
      home: HomeRoute(),
    );
  }
}
