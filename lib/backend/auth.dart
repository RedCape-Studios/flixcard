import 'package:black_tortoise/constants.dart';
import 'package:supabase/supabase.dart';

class Auth {
  static late final SupabaseClient supabaseClient;

  Auth() {
    supabaseClient = SupabaseClient(Tokens.supabaseUrl, Tokens.supabaseKey);
  }

  static Future<bool> signUp(String email, String password) async {
    final response = await supabaseClient.auth.signUp(email, password);
    if (response.error != null) {
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> signIn(String email, String password) async {
    final response =
        await supabaseClient.auth.signIn(email: email, password: password);
    if (response.error != null) {
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> signOut() async {
    final response = await supabaseClient.auth.signOut();
    if (response.error != null) {
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> forgotPassword(String email) async {
    final response = await supabaseClient.auth.api.resetPasswordForEmail(email);
    if (response.error != null) {
      return false;
    }
    return true;
  }
}
