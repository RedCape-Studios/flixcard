import 'package:black_tortoise/backend/api.dart';
import 'package:flutter/cupertino.dart';

class ContentModel extends ChangeNotifier {
  final List<ApiResult> movieList = [];

  void addContents() async {
    final res = await Api.fetch().toList();
    movieList.addAll(List.generate(10, (i) {
      return res[i];
    }));
    notifyListeners();
  }
}
