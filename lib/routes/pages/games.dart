import 'package:black_tortoise/routes/home.dart';
import 'package:black_tortoise/widgets/tab_contents.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverList(
        delegate: SliverChildListDelegate(
          [
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
            ContentTabWidget(child: TabContents()),
          ],
        ),
      ),
    );
  }
}
