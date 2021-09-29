import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: Align(alignment: Alignment.center, child: TitleText()),
      actions: [
        Hero(
          tag: 'search',
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.pushNamed(context, '/search'),
          ),
        ),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  final textGradient = LinearGradient(colors: <Color>[
    Color(0xffDA44bb),
    Color(0xff8921aa),
  ]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Text(
      'FlixCard',
      style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          foreground: Paint()..shader = textGradient),
    );
  }
}
