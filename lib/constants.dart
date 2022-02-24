import 'package:flutter_dotenv/flutter_dotenv.dart';

class Tokens {
  /// Tokens for various API's

  static late String supabaseUrl;
  static late String supabaseKey;
  static late String movieKey;

  static Future<void> loadEnv() async {
    await dotenv.load(fileName: '.env');

    supabaseUrl = dotenv.env['SUPABASE_URL'].toString();
    supabaseKey = dotenv.env['SUPABASE_KEY'].toString();
    movieKey = dotenv.env['MOVIE_KEY'].toString();
  }
}
