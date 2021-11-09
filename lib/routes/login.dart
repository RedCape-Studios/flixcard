import 'package:black_tortoise/models/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignUpBody()),
    );
  }
}

class SignUpBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginModel>(
      builder: (context, model, child) {
        return Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(model.login ? 'Login' : 'Sign Up',
                            style: TextStyle(fontSize: 30)))),
              ),
              Flexible(
                  flex: 2,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 7.0, left: 10.0, right: 10.0),
                            child: TextFormField(
                              controller: model.emailController,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return "Please enter your email ID";
                                } else if (!value.contains(RegExp(r'@|.com'))) {
                                  return "email ID is not valid";
                                }
                              },
                              decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 14.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            controller: model.usernameController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Please enter your username";
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "Username",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 14.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            obscureText: true,
                            controller: model.passwordController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Please enter your password";
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                child: Column(children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        child: Text(model.login ? "Login" : "Sign Up",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            )),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (model.login) {
                              Navigator.popAndPushNamed(context, '/home');
                            } else {
                              Navigator.popAndPushNamed(context, '/home');
                            }
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      child: Text(model.login ? 'Sign Up' : 'Login'),
                      onPressed: () => model.switchPage(),
                    ),
                  )
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
