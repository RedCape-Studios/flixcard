import 'package:black_tortoise/backend/api.dart';
import 'package:black_tortoise/models/pages.dart';
import 'package:flutter/cupertino.dart';

class ContentModel extends ChangeNotifier {
  final List<ApiResult> movieList = [];
  final List<ApiResult> serialList = [];
  final List<ApiResult> gameList = [];
  var movieCount = 0;

  void addContents(PageEnum page) async {
    if (page == PageEnum.MoviesPage) {
      movieCount++;

      final res = await Api.fetch(movieCount).toList();
      movieList.addAll(List.generate(10, (i) {
        return res[i];
      }));
    }
    notifyListeners();
  }
}
