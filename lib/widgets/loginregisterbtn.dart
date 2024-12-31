import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class LoginRegisterButton extends StatelessWidget {
  final String btnText;
  final bool? forgotPass;
  final VoidCallback onpressed;

  const LoginRegisterButton(
      {super.key, required this.btnText, this.forgotPass = false, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: globals.loginRegisterBtnPadding,
      width: 0.7 * MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: forgotPass == false
                  ? globals.loginRegisterBtnColor
                  : globals.forgotpassBtnColor),
          onPressed: onpressed,
          child: Text(
            btnText,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          )),
    );
  }
}
