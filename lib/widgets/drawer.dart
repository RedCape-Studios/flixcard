import 'package:black_tortoise/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<ThemeModel>(builder: (context, model, child) {
        return Ink(
          color: model.primaryColor,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DrawerHeader(
                      child: Text('hello'),
                      decoration: BoxDecoration(color: model.secondaryColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('CATEGORIES')),
                    ListTile(
                      onTap: () => null,
                      leading: Icon(Icons.videogame_asset),
                      title: Text('Games'),
                    ),
                    ListTile(
                      onTap: () => null,
                      leading: Icon(Icons.movie_creation),
                      title: Text('Movies'),
                    ),
                    ListTile(
                      onTap: () => null,
                      leading: Icon(Icons.tv),
                      title: Text('Series'),
                    ),
                    Divider(),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('SETTINGS')),
                    ListTile(
                      onTap: () => Navigator.of(context).pushNamed('/settings'),
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
