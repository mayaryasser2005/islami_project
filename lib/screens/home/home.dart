import 'package:flutter/material.dart';
import 'package:islame_project/screens/home/tabs/ahadath/ahadath.dart';
import 'package:islame_project/screens/home/tabs/quran/quran.dart';
import 'package:islame_project/screens/home/tabs/radio/radio.dart';
import 'package:islame_project/screens/home/tabs/sebha/sebha.dart';
import 'package:islame_project/utils/app_style.dart';

import '../../utils/app_colors.dart';

class Home extends StatefulWidget {
  static const routeNamed = "Home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  List<Widget> tabs = [Quran(), MyRadio(), Ahadath(), Sebha()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "islami",
              style: AppStyle.appBartextstyle,
            ),
            centerTitle: true,
            backgroundColor: AppColors.transparent,
            elevation: 0,
          ),
          backgroundColor: AppColors.transparent,
        bottomNavigationBar: buildBottonsNavgations(),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  Theme buildBottonsNavgations() {
    return Theme(
      data: ThemeData(canvasColor: AppColors.primary),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.accent,
        selectedIconTheme: const IconThemeData(size: 36),
        // showUnselectedLabels: true,
        currentIndex: selectedTabIndex,
        onTap: (Index) {
          selectedTabIndex = Index;
          setState(() {});
        },

        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_moshaf_gold.png")),
              label: "Moshaf"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
              label: "Radio"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_ktab.png")),
              label: "Ktab"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
              label: "Sebha"),
        ],
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
