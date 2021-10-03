import 'package:flutter/material.dart';

class FavouritesRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fav',
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Favourites'),
        ),
      ),
    );
  }
}
