import 'package:black_tortoise/constants.dart';
import 'package:dio/dio.dart';

abstract class ApiResult {
  final bool adult;
  final String? posterImage;
  final String? backdropImage;
  final String title;
  final String desc;
  final String lang;
  final String releaseDate;
  final double score;
  final int scoreCount;

  const ApiResult({
    required this.adult,
    required this.posterImage,
    required this.backdropImage,
    required this.title,
    required this.desc,
    required this.lang,
    required this.releaseDate,
    required this.score,
    required this.scoreCount,
  });
}

class MovieApiResult implements ApiResult {
  final bool adult;
  final String? posterImage;
  final String? backdropImage;
  final String title;
  final String desc;
  final String lang;
  final String releaseDate;
  final double score;
  final int scoreCount;

  const MovieApiResult({
    required this.adult,
    required this.posterImage,
    required this.backdropImage,
    required this.title,
    required this.desc,
    required this.lang,
    required this.releaseDate,
    required this.score,
    required this.scoreCount,
  });
}

class SerialApiResult implements ApiResult {
  final bool adult;
  final String? posterImage;
  final String? backdropImage;
  final String title;
  final String desc;
  final String lang;
  final String releaseDate;
  final double score;
  final int scoreCount;

  const SerialApiResult({
    required this.adult,
    required this.posterImage,
    required this.backdropImage,
    required this.title,
    required this.desc,
    required this.lang,
    required this.releaseDate,
    required this.score,
    required this.scoreCount,
  });
}

class GameApiResult implements ApiResult {
  final bool adult;
  final String? posterImage;
  final String? backdropImage;
  final String title;
  final String desc;
  final String lang;
  final String releaseDate;
  final double score;
  final int scoreCount;

  const GameApiResult({
    required this.adult,
    required this.posterImage,
    required this.backdropImage,
    required this.title,
    required this.desc,
    required this.lang,
    required this.releaseDate,
    required this.score,
    required this.scoreCount,
  });
}

class Api {
  static const movieUrl = 'https://api.themoviedb.org/3/movie/now_playing';
  static const seriesUrl = '';
  static const gameUrl = '';

  static late Dio dio;

  static void init() {
    dio = Dio();
  }

  static Stream<MovieApiResult> fetch(int page) async* {
    print(page);

    late final res;
    try {
      res = await dio.get(
        movieUrl,
        queryParameters: {
          'api_key': Tokens.movieKey,
          'language': 'en-US',
          'page': page,
        },
      );
    } on DioError catch (err) {
      print(err.message);
      print(err.response?.statusCode);
    }

    final List results = res.data['results'];
    for (final element in results) {
      yield MovieApiResult(
        adult: element['adult'],
        posterImage: element['poster_path'],
        backdropImage: element['backdrop_path'],
        title: element['original_title'],
        desc: element['overview'],
        lang: element['original_language'],
        releaseDate: element['release_date'],
        score: double.parse(element['vote_average'].toString()),
        scoreCount: int.parse(element['vote_count'].toString()),
      );
    }
  }
}
