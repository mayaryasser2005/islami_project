import 'package:flutter/material.dart';
import 'package:islame_project/providres/provider_theme.dart';
import 'package:provider/provider.dart';

import '../utils/app_colors.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final String? appBarTitle;
  final Widget? bottomNavgationBar;

  AppScaffold(
      {super.key, this.body, this.appBarTitle, this.bottomNavgationBar});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(themeProvider.mainBackground))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            appBarTitle ?? "",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: bottomNavgationBar,
        body: body,
      ),
    );
  }
}
