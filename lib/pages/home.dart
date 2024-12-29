import 'package:flutter/material.dart';
import 'package:zuri_health_clone/widgets/subtitle.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = '';
  String timeOfDay = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TitleWidget(titleText: 'Hi, $username'),
            SubtitleWidget(
                subtitleText: 'How are you feeling this $timeOfDay')
          ],
        )
      ],
    );
  }
}
