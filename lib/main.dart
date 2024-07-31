import 'package:flutter/material.dart';
import 'package:islame_project/screens/ahadethDetails/ahadethDetails.dart';
import 'package:islame_project/screens/home/home.dart';
import 'package:islame_project/screens/home/tabs/sebha/sebha.dart';
import 'package:islame_project/screens/splash/splash.dart';
import 'package:islame_project/screens/suradetails/suradetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeNamed: (_) => const Splash(),
        Home.routeNamed: (_) => const Home(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        Sebha.routeNamed: (_) => Sebha(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        AhadethDetails.routeNamed: (_) => AhadethDetails(),
      },
      initialRoute: Splash.routeNamed,
    );
  }
}


