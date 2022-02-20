import 'package:dotenv/dotenv.dart' show load, env;

class Tokens {
  /// Tokens for various API's

  static late String supabaseUrl;
  static late String supabaseKey;
  static late String movieKey;

  static void loadEnv() {
    load();

    supabaseUrl = env['SUPABASE_URL'].toString();
    supabaseKey = env['SUPABASE_KEY'].toString();
    movieKey = env['MOVIE_KEY'].toString();

    print(movieKey);
  }
}
