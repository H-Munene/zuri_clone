import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class PasswordTextFormField extends StatefulWidget {
  final String placeholder;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function()? ontapfocus;

  const PasswordTextFormField(
      {super.key,
      required this.placeholder,
      required this.controller,
      required this.focusNode,
      required this.ontapfocus});

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool showPassword = false;

  void toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9 * MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        obscureText: !showPassword,
        onTap: widget.ontapfocus,
        focusNode: widget.focusNode,
        autocorrect: false,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: toggleVisibility,
              child: showPassword
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
            labelText: widget.placeholder,
            labelStyle: TextStyle(),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(globals.textfieldBorderRadius),
            ),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: globals.errorColor))),
      ),
    );
  }
}
