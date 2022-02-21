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
  var isVisible = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    setState(() {
      if ((scrollController.position.extentBefore > 1000)) {
        isVisible = true;
      } else {
        isVisible = false;
      }
    });

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
      floatingActionButton: Visibility(
        visible: isVisible,
        child: FloatingActionButton(
          onPressed: () {
            scrollController.jumpTo(0);
          },
          child: Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
