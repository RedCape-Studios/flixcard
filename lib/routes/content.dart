import 'package:flutter/material.dart';

class ContentRoute extends StatelessWidget {
  final String heading;
  final String? backdropImage;

  ContentRoute({required this.heading, required this.backdropImage});

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
      body: Image.network(
        'https://image.tmdb.org/t/p/w500$backdropImage',
        errorBuilder: (context, error, stackTrace) => Center(
          child: Icon(Icons.error_outline, size: 100),
        ),
      ),
    );
  }
}
