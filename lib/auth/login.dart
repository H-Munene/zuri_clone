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
  TextEditingController firstnameController = TextEditingController();
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
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
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
            controller: firstnameController,
            focusNode: focusemail,
            ontapfocus: focusemail.requestFocus,
          ),
          Padding(padding: EdgeInsets.only(bottom: 17)),
          //password
          PasswordTextFormField(
              ontapfocus: focuspassword.requestFocus,
              placeholder: globals.password,
              controller: firstnameController,
              focusNode: focuspassword),
          Padding(padding: EdgeInsets.only(bottom: 45)),

          //login button
          LoginRegisterButton(btnText: globals.loginbtnText),

          //forgot password
          Container(
            padding: globals.loginRegisterBtnPadding,
            child: RichText(
                text: TextSpan(
                    text: "Forgot Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/forgot-password');
                      })),
          ),

          //create account
          Container(
            padding: EdgeInsets.only(top: 45),
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
