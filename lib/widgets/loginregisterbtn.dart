import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class LoginRegisterButton extends StatelessWidget {
  final String btnText;

  const LoginRegisterButton({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: globals.loginRegisterBtnPadding,
      width: 0.7 * MediaQuery.of(context).size.width,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: globals.loginRegisterBtnColor
        ),
          onPressed: () {},
          child: Text(
            btnText,
            style: TextStyle(color: globals.placeholdercolor, fontSize: 14),
          )),
    );
  }
}
