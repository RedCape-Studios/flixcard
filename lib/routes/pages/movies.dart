import 'package:black_tortoise/models/content.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviesPage extends StatefulWidget {
  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ContentModel>(context, listen: false).addContents();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContentModel>(builder: (context, model, child) {
      return SliverList(
        delegate: SliverChildListDelegate(List.generate(
          model.movieList.length,
          (index) => ContentTabWidget(info: model.movieList[index]),
        )),
      );
    });
  }
}
