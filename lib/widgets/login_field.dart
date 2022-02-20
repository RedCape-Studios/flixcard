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

  LoginFormFieldWidget({
    required this.validator,
    required this.controller,
    required this.label,
    required this.model,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: accentPrimaryColor,
      strutStyle: StrutStyle(fontFamily: 'Montserrat'),
      obscureText: obscure,
      keyboardType: TextInputType.emailAddress,
      keyboardAppearance: Brightness.dark,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: model.secondaryColor,
        labelStyle: TextStyle(color: model.textColor.withOpacity(0.6)),
        errorStyle: TextStyle(color: Colors.redAccent),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: accentPrimaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
