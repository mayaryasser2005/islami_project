import 'package:flutter/material.dart';
import 'package:islame_project/screens/home/tabs/ahadath/ahadath.dart';
import 'package:islame_project/screens/home/tabs/quran/quran.dart';
import 'package:islame_project/screens/home/tabs/radio/radio.dart';
import 'package:islame_project/screens/home/tabs/sebha/sebha.dart';
import 'package:islame_project/screens/home/tabs/setting/setting.dart';
import 'package:islame_project/witgets/app_scaffold.dart';
import 'package:provider/provider.dart';

import '../../providres/provider_theme.dart';

class Home extends StatefulWidget {
  static const routeNamed = "Home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 1;
  List<Widget> tabs = [
    const Quran(),
    const MyRadio(),
    Ahadath(),
    const Sebha(),
    Setting()
  ];

  late ThemeProvider themeprovider;
  @override
  Widget build(BuildContext context) {
    themeprovider = Provider.of(context);
    return AppScaffold(
      appBarTitle: "islami",
      body: tabs[selectedTabIndex],
      bottomNavgationBar: Theme(
        data:
            Theme.of(context).copyWith(canvasColor: themeprovider.primaryColor),
        child: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 36),
          // showUnselectedLabels: true,
          currentIndex: selectedTabIndex,
          onTap: (index) {
            selectedTabIndex = index;
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
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: " context.localization.settings"),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        title: Text(" context.localization.islami,"),
      );
}
