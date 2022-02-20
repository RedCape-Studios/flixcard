import 'package:black_tortoise/utils/constants.dart';
import 'package:dio/dio.dart';

class Api {
  static const movieUrl = 'https://api.themoviedb.org/3/movie/';
  static const seriesUrl = '';
  static const gameUrl = '';

  static late Dio dio;

  static void init() {
    dio = Dio();
  }

  static Future<void> fetch() async {
    final res = await dio.get(
      movieUrl,
      queryParameters: {
        'api_key': Tokens.movieKey,
        'language': 'en-US',
        'page': 1,
      },
    );

    print(res.data);
  }
}
