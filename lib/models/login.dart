import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  bool login = true;

  void switchPage() {
    login = !login;
    notifyListeners();
  }
}
