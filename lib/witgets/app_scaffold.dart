import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_style.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final String? appBarTitle;
  final Widget? bottomNavgationBar;

  const AppScaffold(
      {super.key, this.body, this.appBarTitle, this.bottomNavgationBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            appBarTitle ?? "",
            style: AppStyle.appBartextstyle,
          ),
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          elevation: 0,
        ),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: bottomNavgationBar,
        body: body,
      ),
    );
  }

  AppBar buildAppBar(_) => AppBar(
        title: Text(
          "islami",
          style: AppStyle.appBartextstyle,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
      );
}
