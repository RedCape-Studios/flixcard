import 'package:black_tortoise/backend/api.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [ContentTabWidget(info: GameApiResult())],
      ),
    );
  }
}
