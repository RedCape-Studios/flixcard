import 'package:black_tortoise/models/content.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContentModel>(builder: (context, model, child) {
      return SliverList(
        delegate: SliverChildListDelegate(List.generate(
          model.movieList.length,
          (index) => ContentTabWidget(
            child: TabContents(),
          ),
        )),
      );
    });
  }
}
