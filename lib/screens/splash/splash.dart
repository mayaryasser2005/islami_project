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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/splash.png",
              ))),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
