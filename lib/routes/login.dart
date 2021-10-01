import 'package:black_tortoise/routes/home.dart';
import 'package:flutter/material.dart';

class SignUpRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUp();
  }
}

class SignUp extends State<SignUpRoute> {
  String gmail = "";
  String password = "";
  String userName = "";
  var _formKey = GlobalKey<FormState>();
  static TextEditingController gmailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.zero,
            child: ListView(children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(top: 80, bottom: 50),
                      child: Text("WELCOME TO FLIXCARD",
                          style: TextStyle(fontSize: 20)))),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 2),
                  child: Text("    Sign up:")),
              Padding(
                  padding: EdgeInsets.only(
                      top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                  child: TextFormField(
                    controller: gmailController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "please enter your gmail id";
                      } else if (!value.contains(RegExp(r'@gmail.com'))) {
                        return "email ID is not valid";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Gmail",
                        hintText: "enter your Gmail id",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    onChanged: (String? userInput) {
                      setState(() {
                        this.gmail = userInput!;
                      });
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "please enter your password";
                    } else if (!value
                        .contains(RegExp(r'1|2|3|4|5|6|7|8|9|0'))) {
                      return "password should contain atleast one numerical character";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "enter your new password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (String? userInput) {
                    setState(() {
                      password = userInput!;
                    });
                  },
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                  child: TextFormField(
                    controller: userNameController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "please enter your username";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "user name",
                        hintText: "enter your new username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    onChanged: (String? userInput) {
                      setState(() {
                        userName = userInput!;
                      });
                    },
                  )),
              Center(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 3, bottom: 190, left: 10, right: 10),
                child: ElevatedButton(
                    child: Text("create+",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.0,
                          color: Colors.black,
                        )),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeRoute();
                        }));
                      }
                    }),
              )),
              // Align(
              //     alignment: Alignment.bottomRight,
              //     child: Padding(
              //       padding: EdgeInsets.only(right: 10, top: 20, bottom: 10),
              //       child: GestureDetector(
              //         onTap: () {
              //           // Navigator.pop(context);
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return Scaffold(
              //                 appBar: AppBar(
              //                   title: Text("Login page:",
              //                       style: TextStyle(
              //                         fontSize: 25,
              //                       )),
              //                 ),
              //                 body: LogInRoute());
              //           }));
              //         },
              //         child: Text('Existing account? log in',
              //             style: TextStyle(
              //               decoration: TextDecoration.underline,
              //               color: Colors.blue,
              //               fontSize: 12,
              //             )),
              //       ),
              //     ))
            ])));
  }
}

class LogInRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LogInUp();
  }
}

class LogInUp extends State<LogInRoute> {
  String gmail = "";
  String password = "";
  var _formKey = GlobalKey<FormState>();
  static TextEditingController gmailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.zero,
            child: ListView(children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(top: 80, bottom: 50),
                      child: Text("WELCOME BACK TO FLIXCARD",
                          style: TextStyle(fontSize: 20)))),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 2),
                  child: Text("    Sign up:")),
              Padding(
                  padding: EdgeInsets.only(
                      top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                  child: TextFormField(
                    controller: gmailController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "please enter your gmail id";
                      } else if (!value.contains(RegExp(r'@gmail.com'))) {
                        return "email ID is not valid";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Gmail",
                        hintText: "enter your Gmail id",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    onChanged: (String? userInput) {
                      setState(() {
                        this.gmail = userInput!;
                      });
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "please enter your password";
                    } else if (!value
                        .contains(RegExp(r'1|2|3|4|5|6|7|8|9|0'))) {
                      return "password should contain atleast one numerical character";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "enter your new password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (String? userInput) {
                    setState(() {
                      password = userInput!;
                    });
                  },
                ),
              ),
              Center(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: 3, bottom: 240, left: 10, right: 10),
                child: ElevatedButton(
                    child: Text("log in+",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.0,
                          color: Colors.black,
                        )),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeRoute();
                        }));
                      }
                    }),
              )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, top: 20, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Scaffold(
                              appBar: AppBar(
                                title: Text("Login page:",
                                    style: TextStyle(
                                      fontSize: 25,
                                    )),
                              ),
                              body: SignUpRoute());
                        }));
                      },
                      child: Text('Create new account? Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontSize: 12,
                          )),
                    ),
                  ))
            ])));
  }
}
