import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => print('lol'),
        ),
        title: Center(child: Text('Black Tortoise')),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => print('lol'),
          ),
        ],
      ),
    );
  }
}

