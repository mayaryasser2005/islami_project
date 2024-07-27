import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  static const routeNamed = "suradetails";

  SuraDetails({super.key});

  late SuraDetails args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDetails;

    return Scaffold();
  }
}
