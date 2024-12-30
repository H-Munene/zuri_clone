import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:zuri_health_clone/pages/home.dart';
import 'package:zuri_health_clone/pages/navigationmenu.dart';
import 'package:zuri_health_clone/providers/userprovider.dart';
import 'package:zuri_health_clone/routes/routes.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;
import 'package:zuri_health_clone/widgets/loginregisterbtn.dart';
import 'package:zuri_health_clone/widgets/passwordtxtformfield.dart';
import 'package:zuri_health_clone/widgets/subtitle.dart';
import 'package:zuri_health_clone/widgets/textformfield.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();

  FocusNode focusfirstname = FocusNode();
  FocusNode focuslastname = FocusNode();
  FocusNode focusemail = FocusNode();
  FocusNode focusphone = FocusNode();
  FocusNode focuspassword = FocusNode();
  FocusNode focusconfirmPassword = FocusNode();

  @override
  Widget build(BuildContext context) {
    // context.read<UserProvider>().showUsername(firstnameController.text, lastnameController.text);
    // context.read<UserProvider>().showEmail(emailController.text);
    // context.read<UserProvider>().showPhonenumber(phoneController.text);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //titles
              Container(
                  padding: globals.titlepadding,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [TitleWidget(titleText: globals.registerTitle)],
                    ),
                    SubtitleWidget(subtitleText: globals.registerSubTitle),
                  ])),

              //first name
              TextFormFieldWidget(
                  placeholder: globals.firstname,
                  controller: firstnameController,
                  focusNode: focusfirstname,
                  ontapfocus: focusfirstname.requestFocus),

              //last name
              TextFormFieldWidget(
                  placeholder: globals.lastname,
                  controller: lastnameController,
                  focusNode: focuslastname,
                  ontapfocus: focuslastname.requestFocus),
              //email
              TextFormFieldWidget(
                  placeholder: globals.email,
                  controller: emailController,
                  focusNode: focusemail,
                  ontapfocus: focusemail.requestFocus),
              //phone number
              Container(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                width: 0.9 * MediaQuery.of(context).size.width,
                child: IntlPhoneField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: globals.phonenumber,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  // pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.transparent),
                  initialCountryCode: 'KE',
                  disableLengthCheck: true,
                  onChanged: (phone) {
                    debugPrint(phone.completeNumber);
                  },
                ),
              ),
              //gender
              Container(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: DropdownMenu(
                    width: 0.9 * MediaQuery.of(context).size.width,
                    hintText: globals.gender,
                    onSelected: (value) => debugPrint(value),
                    dropdownMenuEntries: globals.genders
                        .map((gender) => DropdownMenuEntry(
                              value: gender,
                              label: gender,
                            ))
                        .toList()),
              ),
              //password
              PasswordTextFormField(
                  placeholder: globals.password,
                  controller: passwordController,
                  focusNode: focuspassword,
                  ontapfocus: focuspassword.requestFocus),

              //password guidelines
              Container(
                width: 375,
                padding: EdgeInsets.only(left: 25, bottom: 10, right: 25),
                child: Column(
                  children: [
                    Text(
                      "Password should contain at least 8 characters. One uppercase letter. One lowercase letter. One digit. One special character e.g. !#\$",
                      style: TextStyle(
                          fontSize: 12.5, color: globals.placeholdercolor),
                    )
                  ],
                ),
              ),
              //confirm password
              PasswordTextFormField(
                  placeholder: globals.confirmpassword,
                  controller: confirmpassController,
                  focusNode: focusconfirmPassword,
                  ontapfocus: focusconfirmPassword.requestFocus),

              //next
              LoginRegisterButton(
                btnText: globals.registerbtnText,
                onpressed: () => {
                  context.read<UserProvider>().showUsername(
                      firstnameController.text, lastnameController.text),
                  context.read<UserProvider>().showEmail(emailController.text),
                  context
                      .read<UserProvider>()
                      .showPhonenumber(phoneController.text),
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  NavigationMenu()))
                },
              ),

              //policy agreement
              Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'By continuing you agreed to our ',
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                            text: 'privacy',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ])),
                  RichText(
                      text: TextSpan(
                          text: 'policy',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                          children: [
                        TextSpan(
                            text: ' and ',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none)),
                        TextSpan(
                            text: 'terms and conditions',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ])),
                  Padding(padding: EdgeInsets.only(bottom: 40))
                ],
              ),
              //already a member login
              RichText(
                  text: TextSpan(
                      text: 'Already a member? ',
                      style: TextStyle(color: globals.placeholdercolor),
                      children: [
                    TextSpan(
                        text: 'LOGIN',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(
                              context, RouteGenerator.loginPage))
                  ])),
              Padding(padding: EdgeInsets.only(bottom: 20))
            ],
          ),
        ),
      )),
    );
  }
}
