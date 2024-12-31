import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zuri_health_clone/providers/userprovider.dart';
import 'package:zuri_health_clone/widgets/subtitle.dart';
import 'package:zuri_health_clone/widgets/title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String username = context.watch<UserProvider>().username;
    String phonenumber = context.watch<UserProvider>().phonenumber;
    String email = context.watch<UserProvider>().email;

    return Column(
      children: [
        Column(
          children: [
            TitleWidget(titleText: 'Hi, $username'),
            FittedBox(child: TitleWidget(titleText: 'Email: $email')),
            FittedBox(child: TitleWidget(titleText: 'Phonenumber: +254$phonenumber')),
            SubtitleWidget(subtitleText: 'How are you feeling this afternoon'),
          ],
        )
      ],
    );
  }
}
