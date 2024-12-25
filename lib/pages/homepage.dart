import 'package:flutter/material.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(child: Column(
      children: [
        TitleWidget(titleText: 'In home Page'),
      ],
    ),),
    );
  }
}