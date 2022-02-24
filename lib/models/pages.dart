import 'package:flutter/cupertino.dart';

enum PageEnum {
  GamesPage,
  MoviesPage,
  SerialsPage,
  SettingsPage,
}

class PageModel extends ChangeNotifier {
  int pageIndex = 0;

  void changePage(int index) {
    pageIndex = index;
    notifyListeners();
  }
}
