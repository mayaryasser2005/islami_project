import 'package:flutter/material.dart';
import 'package:islame_project/providres/provider_theme.dart';
import 'package:islame_project/utils/app_assets.dart';
import 'package:provider/provider.dart';

import '../utils/app_colors.dart';
import '../utils/app_style.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final String? appBarTitle;
  final Widget? bottomNavgationBar;

  AppScaffold(
      {super.key, this.body, this.appBarTitle, this.bottomNavgationBar});

  late ThemeProvider themeprovider;
  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(themeProvider.mainBackground))),
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
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: bottomNavgationBar,
        body: body,
      ),
    );
  }

  AppBar buildAppBar(_) => AppBar(
        title: Text(
          context.localization.islami,
        ),
      );
}
