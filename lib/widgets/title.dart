import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as  globals;

class TitleWidget extends StatelessWidget {
  final String titleText;

  const TitleWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: globals.titlepadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ],
      ),
    );
  }
}
