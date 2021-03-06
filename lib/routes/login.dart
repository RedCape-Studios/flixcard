import 'package:black_tortoise/backend/auth.dart';
import 'package:black_tortoise/models/login.dart';
import 'package:black_tortoise/models/theme.dart';
import 'package:black_tortoise/widgets/login_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class SignUpRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (context, model, child) {
      return Scaffold(
        backgroundColor: model.primaryColor,
        // ! Check if sized correctly in 5.5" devices
        // resizeToAvoidBottomInset: false,
        body: SafeArea(child: SignUpBody()),
      );
    });
  }
}

class SignUpBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final _formKey = GlobalKey<FormState>();

  SnackBar errorSnackBar(String text) {
    return SnackBar(
      duration: Duration(milliseconds: 800),
      content: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<LoginModel, ThemeModel>(
      builder: (context, loginModel, themeModel, child) {
        return Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      loginModel.isLogin ? 'Log in' : 'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 7.0, left: 10.0, right: 10.0),
                          child: LoginFormFieldWidget(
                            controller: loginModel.emailController,
                            validator: (var value) {
                              if (value!.isEmpty) {
                                return "Please enter your Email ID";
                              } else if (!(value.contains(RegExp(r'@|.com')))) {
                                return "Email ID is not valid";
                              }
                              return null;
                            },
                            label: 'Email',
                            model: themeModel,
                          )),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 14.0, left: 10.0, right: 10.0),
                        child: LoginFormFieldWidget(
                          controller: loginModel.usernameController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please enter your username";
                            }
                            return null;
                          },
                          label: 'Username',
                          model: themeModel,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 14.0, left: 10.0, right: 10.0),
                        child: LoginFormFieldWidget(
                          obscure: true,
                          controller: loginModel.passwordController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                          label: 'Password',
                          model: themeModel,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        child: Ink(
                          // width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: accentGradient,
                          ),
                          child: Center(
                            child: Text(
                              loginModel.isLogin ? "Log in" : "Sign Up",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            if (loginModel.isLogin) {
                              if (await Auth.signIn(
                                loginModel.emailController.text,
                                loginModel.passwordController.text,
                              )) {
                                Navigator.popAndPushNamed(context, '/home');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  errorSnackBar('Incorrect details entered.'),
                                );
                              }
                            } else {
                              if (await Auth.signUp(
                                  loginModel.emailController.text,
                                  loginModel.passwordController.text)) {
                                Navigator.popAndPushNamed(context, '/home');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  errorSnackBar(
                                    'Unable to sign up. Please try again.',
                                  ),
                                );
                              }
                            }
                          }
                          Navigator.popAndPushNamed(context, '/home');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              loginModel.isLogin
                                  ? 'Don\'t have an account? Sign Up'
                                  : 'Have an account? Log in',
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                        onTap: () => loginModel.switchPage(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
