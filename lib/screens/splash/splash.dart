import 'package:flutter/material.dart';

import '../home/home.dart';

class Splash extends StatelessWidget {
  static const routeNamed = "splash";

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeNamed);
    });
    return Scaffold(
      body: Image.asset("assets/images/splash.png"),
    );
  }
}
