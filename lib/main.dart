import 'package:flutter/material.dart';
import 'package:islame_project/screens/home/home.dart';
import 'package:islame_project/screens/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeNamed: (_) => const Splash(),
        Home.routeNamed: (_) => const Home(),
      },
      initialRoute: Splash.routeNamed,
    );
  }
}


