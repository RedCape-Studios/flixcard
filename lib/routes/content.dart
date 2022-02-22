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
      body: FadeInImage.assetNetwork(
        placeholder: 'lib/assets/images/placeholder.png',
        image: 'https://image.tmdb.org/t/p/w500$backdropImage',
        fit: BoxFit.contain,
        placeholderFit: BoxFit.contain,
      ),
    );
  }
}
