import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class TextFormFieldWidget extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function()? ontapfocus;

  const TextFormFieldWidget(
      {super.key,
      required this.placeholder,
      required this.controller,
      required this.focusNode,
      required this.ontapfocus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9 * MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        onTap: ontapfocus,
        focusNode: focusNode,
        autocorrect: false,
        controller: controller,
        decoration: InputDecoration(
            labelText: placeholder,
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
