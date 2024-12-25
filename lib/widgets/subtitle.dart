import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String subtitleText;
  final bool? alignstart;

  const SubtitleWidget(
      {super.key, required this.subtitleText, this.alignstart = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignstart == true
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        Text(subtitleText,
            style: TextStyle(
              fontSize: 15,
            )),
      ],
    );
  }
}
