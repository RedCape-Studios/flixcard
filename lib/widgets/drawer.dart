import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('')),
          Padding(padding: EdgeInsets.only(left: 10), child: Text('CATEGORIES')),
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
          Padding(padding: EdgeInsets.only(left: 10), child: Text('SETTINGS')),
          ListTile(
            onTap: () => null,
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
      ),
    );
  }
}
