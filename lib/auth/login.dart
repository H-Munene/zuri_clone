import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;
import 'package:zuri_health_clone/widgets/loginregisterbtn.dart';
import 'package:zuri_health_clone/widgets/passwordtxtformfield.dart';
import 'package:zuri_health_clone/widgets/textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode focusfirstname = FocusNode();
  FocusNode focuslastname = FocusNode();
  FocusNode focusemail = FocusNode();
  FocusNode focuspassword = FocusNode();

  bool showPassword = false;

  void toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    focusfirstname.dispose();
    focuslastname.dispose();
    focusemail.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          //welcome back, sign in as patient
          Container(
              padding: globals.titlepadding,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Sign in as a patient'),
                  ],
                ),
              ])),

          //email
          TextFormFieldWidget(
            placeholder: globals.email,
            controller: emailController,
            focusNode: focusemail,
            ontapfocus: focusemail.requestFocus,
          ),
          Padding(padding: EdgeInsets.only(bottom: 17)),
          //password
          PasswordTextFormField(
              ontapfocus: focuspassword.requestFocus,
              placeholder: globals.password,
              controller: passwordController,
              focusNode: focuspassword),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          //forgot password
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                        text: "Forgot Password?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/forgot-password');
                          })),
                Padding(padding: EdgeInsets.only(right: 20)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 35)),

          //login button
          LoginRegisterButton(btnText: globals.loginbtnText),

          //create account
          Container(
            padding: EdgeInsets.only(top: 35),
            child: RichText(
                text: TextSpan(
                    text: "Don't have an account?   ",
                    style: TextStyle(color: globals.placeholdercolor),
                    children: [
                  TextSpan(
                      text: "Create account",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => Navigator.pushNamed(context, '/register'))
                ])),
          )
        ],
      ))),
    );
  }
}
