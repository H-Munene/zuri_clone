import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class TextFormFieldWidget extends StatefulWidget {
  final String placeholder;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function()? ontapfocus;
  final Icon? suffixIcon;
  const TextFormFieldWidget({
    super.key,
    required this.placeholder,
    required this.controller,
    required this.focusNode,
    required this.ontapfocus,
    this.suffixIcon,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9 * MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        onChanged: (value) {
          setState(() {});
        },
        keyboardType: (widget.placeholder == 'Phone number')
            ? TextInputType.phone
            : (widget.placeholder == 'Email')
                ? TextInputType.emailAddress
                : (widget.placeholder == 'First name' ||
                        widget.placeholder == 'Last name')
                    ? TextInputType.name
                    : null,
        onTap: widget.ontapfocus,
        focusNode: widget.focusNode,
        autocorrect: false,
        maxLength: (widget.placeholder == 'Phone number') ? 9 : null,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: (widget.controller.text.isNotEmpty)
                ? IconButton(
                    onPressed: () {
                      widget.controller.clear();
                      setState(() {});
                    },
                    icon: Icon(Icons.cancel))
                : null,
            labelText: widget.placeholder,
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
