import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zuri_health_clone/providers/userprovider.dart';
import 'package:zuri_health_clone/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 72, 197, 255)),
          useMaterial3: true,
        ),
        initialRoute: RouteGenerator.registerPage,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
