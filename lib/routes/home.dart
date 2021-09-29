import 'package:black_tortoise/models/pages.dart';
import 'package:black_tortoise/widgets/app_bar.dart';
import 'package:black_tortoise/widgets/drawer.dart';
import 'package:black_tortoise/widgets/nav_bar.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarWidget(),
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          Content(),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageModel>(builder: (context, model, child) {
      return model.page;
    });
  }
}
