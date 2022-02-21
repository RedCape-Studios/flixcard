import 'package:black_tortoise/models/content.dart';
import 'package:black_tortoise/models/pages.dart';
import 'package:black_tortoise/widgets/app_bar.dart';
import 'package:black_tortoise/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRoute extends StatefulWidget {
  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    // print(scrollController.position.extentAfter);
    if (scrollController.position.extentAfter < 50) {
      Provider.of<ContentModel>(context, listen: false).addContents();
    }
  }

  @override
  void dispose() {
    scrollController..removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarWidget(),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          AppBarWidget(),
          Consumer<PageModel>(builder: (context, model, child) {
            return model.page;
          }),
        ],
      ),
    );
  }
}
