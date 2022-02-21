import 'package:flutter/cupertino.dart';

enum PageEnum {
  GamesPage,
  MoviesPage,
  SerialsPage,
  SettingsPage,
}

class PageModel extends ChangeNotifier {
  var pageIndex = 0;

  void changePage(int index) {
    pageIndex = index;
    notifyListeners();
  }
}
