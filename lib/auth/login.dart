import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;
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
          TextFormFieldWidget(
            focusNode: focusfirstname,
            ontapfocus: () => focusfirstname.requestFocus(),
            placeholder: globals.firstname,
            controller: firstnameController,
          ),
          TextFormFieldWidget(
            placeholder: globals.lastname,
            controller: firstnameController,
            focusNode: focuslastname,
            ontapfocus: () => focuslastname.requestFocus(),
          ),
          TextFormFieldWidget(
            placeholder: globals.email,
            controller: firstnameController,
            focusNode: focusemail,
            ontapfocus: focusemail.requestFocus,
          ),
          PasswordTextFormField(
              ontapfocus: focuspassword.requestFocus,
              placeholder: globals.password,
              controller: firstnameController,
              focusNode: focuspassword)
        ],
      ))),
    );
  }
}
