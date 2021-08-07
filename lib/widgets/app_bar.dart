import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => null,
      ),
      title: Align(alignment: Alignment.center, child: TitleText()),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => Navigator.popAndPushNamed(context, '/search'),
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
