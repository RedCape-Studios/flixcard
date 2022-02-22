import 'dart:async';

import 'package:black_tortoise/models/content.dart';
import 'package:black_tortoise/models/pages.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviesPage extends StatefulWidget {
  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late Future future;

  @override
  void initState() {
    super.initState();
    future = Future.wait([
      Provider.of<ContentModel>(context, listen: false)
          .addContents(PageEnum.MoviesPage)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<ContentModel>(builder: (context, model, child) {
            return SliverList(
              delegate: SliverChildListDelegate(List.generate(
                model.movieList.length,
                (index) => ContentTabWidget(info: model.movieList[index]),
              )),
            );
          });
        } else if (snapshot.hasError) {
          return SliverList(
              delegate:
                  SliverChildListDelegate([Text(snapshot.error.toString())]));
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}
