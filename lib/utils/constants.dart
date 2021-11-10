import 'package:dotenv/dotenv.dart' show load, env;

class Tokens {
  /// Tokens for various API's

  static late String supabaseUrl;
  static late String supabaseKey;

  static void loadEnv() {
    load('.env');

    supabaseUrl = env['SUPABASE_URL'].toString();
    supabaseKey = env['SUPABASE_KEY'].toString();
  }
}
