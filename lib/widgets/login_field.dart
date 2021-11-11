import 'package:black_tortoise/models/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginFormFieldWidget extends StatelessWidget {
  final String? Function(String?) validator;
  final TextEditingController controller;
  final String label;
  final ThemeModel model;
  final bool obscure;

  LoginFormFieldWidget(
      {required this.validator,
      required this.controller,
      required this.label,
      required this.model,
      this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: model.accentColor,
      strutStyle: StrutStyle(fontFamily: 'Montserrat'),
      obscureText: obscure,
      keyboardType: TextInputType.emailAddress,
      keyboardAppearance: Brightness.dark,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        errorStyle: TextStyle(color: Colors.redAccent),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: model.accentColor),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
