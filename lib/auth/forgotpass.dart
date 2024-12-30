import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;
import 'package:zuri_health_clone/widgets/loginregisterbtn.dart';
import 'package:zuri_health_clone/widgets/subtitle.dart';
import 'package:zuri_health_clone/widgets/textformfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final FocusNode focusemail = FocusNode();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 90)),
            //image
            Container(
              height: 0.2 * MediaQuery.of(context).size.height,
              width: 0.2 * MediaQuery.of(context).size.height,
              padding: globals.pagePadding,
              child: Image.asset(
                'assets/images/forgot.jpg',
                fit: BoxFit.cover,
              ),
            ),

            //title
            Container(
              padding: globals.loginRegisterBtnPadding,
              child: Column(
                children: [
                  Text(
                    'Oops, forgot password?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  //subtitle
                  SubtitleWidget(
                    subtitleText: globals.forgotPassSubTitle1,
                    alignstart: false,
                  ),
                  SubtitleWidget(
                    subtitleText: globals.forgotPassSubTitle2,
                    alignstart: false,
                  ),
                  SubtitleWidget(
                    subtitleText: globals.forgotPassSubTitle3,
                    alignstart: false,
                  )
                ],
              ),
            ),

            //email
            TextFormFieldWidget(
                placeholder: globals.email,
                controller: emailController,
                focusNode: focusemail,
                ontapfocus: focusemail.requestFocus),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            //reset password
            LoginRegisterButton(
              btnText: globals.resetPassword,
              forgotPass: true, onpressed: () {  },
            )
          ],
        ),
      )),
    );
  }
}
