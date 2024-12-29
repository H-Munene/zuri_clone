import 'package:flutter/material.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleWidget(titleText: 'Appointments'),
          ],
        )
      ],
    );
  }
}
