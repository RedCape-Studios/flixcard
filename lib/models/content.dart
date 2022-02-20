import 'package:black_tortoise/backend/api.dart';
import 'package:flutter/cupertino.dart';

class ContentModel extends ChangeNotifier {
  final List<Map> movieList = List.generate(10, (index) {
    Api.fetch();
    return {};
  });

  void addContents() {
    movieList.addAll(List.generate(10, (i) => {}));
    notifyListeners();
  }
}
