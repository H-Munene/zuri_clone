import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;

  const TitleWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ],
    );
  }
}
