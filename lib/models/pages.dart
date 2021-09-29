import 'package:black_tortoise/routes/pages/games.dart';
import 'package:black_tortoise/routes/pages/movies.dart';
import 'package:black_tortoise/routes/pages/serials.dart';
import 'package:black_tortoise/routes/pages/settings.dart';
import 'package:flutter/cupertino.dart';

class PageModel extends ChangeNotifier {
  final _pageList = [GamesPage(), MoviesPage(), SerialsPage(), SettingsPage()];
  Widget page = GamesPage();

  void changePage(int index) {
    page = _pageList[index];
    notifyListeners();
  }
}
