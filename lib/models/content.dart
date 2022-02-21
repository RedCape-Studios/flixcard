import 'package:black_tortoise/backend/api.dart';
import 'package:flutter/cupertino.dart';

class ContentModel extends ChangeNotifier {
  final List<ApiResult> movieList = [];
  var amount = 0;

  void addContents() async {
    ++amount;

    final res = await Api.fetch(amount).toList();
    movieList.addAll(List.generate(10, (i) {
      return res[i];
    }));
    notifyListeners();
  }
}
