import 'package:flutter/material.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class VitalsPage extends StatefulWidget {
  const VitalsPage({super.key});

  @override
  State<VitalsPage> createState() => _VitalsPageState();
}

class _VitalsPageState extends State<VitalsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleWidget(titleText: 'Check my Vitals'),
          ],
        )
      ],
    );
  }
}
