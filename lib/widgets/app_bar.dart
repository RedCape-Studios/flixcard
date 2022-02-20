import 'package:black_tortoise/models/theme.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leading: Hero(
        tag: 'fav',
        child: IconButton(
          icon: Icon(Icons.star_border_outlined),
          onPressed: () => Navigator.of(context).pushNamed('/favourites'),
        ),
      ),
      title: Align(alignment: Alignment.center, child: TitleText()),
      actions: [
        Hero(
          tag: 'search',
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.of(context).pushNamed('/search'),
          ),
        ),
      ],
      onStretchTrigger: () async {
        print('object');
      },
    );
  }
}

class TitleText extends StatelessWidget {
  final textGradient =
      accentGradient.createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Text(
      'FlixCard',
      style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        foreground: Paint()..shader = textGradient,
      ),
    );
  }
}
