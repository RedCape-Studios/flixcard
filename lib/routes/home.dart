import 'package:black_tortoise/widgets/app_bar.dart';
import 'package:black_tortoise/widgets/drawer.dart';
import 'package:black_tortoise/widgets/tabs.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
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
    return SliverList(
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
    );
  }
}

class TabContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
