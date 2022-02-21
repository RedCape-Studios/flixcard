import 'package:flutter/material.dart';

class ContentRoute extends StatelessWidget {
  final String heading;

  ContentRoute({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(heading),
      ),
    );
  }
}
