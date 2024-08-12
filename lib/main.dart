import 'package:flutter/material.dart';
import 'package:islame_project/providres/language_providers.dart';
import 'package:islame_project/providres/provider_theme.dart';
import 'package:islame_project/screens/ahadethDetails/ahadethDetails.dart';
import 'package:islame_project/screens/home/home.dart';
import 'package:islame_project/screens/home/tabs/sebha/sebha.dart';
import 'package:islame_project/screens/home/tabs/setting/setting.dart';
import 'package:islame_project/screens/splash/splash.dart';
import 'package:islame_project/screens/suradetails/suradetails.dart';
import 'package:islame_project/utils/app_style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => LanguageProviders()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    late LanguageProviders languageProviders = Provider.of(context);
    late ThemeProvider themeProvider = Provider.of(context);
    return MaterialApp(
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: themeProvider.currentTheme,
      routes: {
        Splash.routeNamed: (_) => const Splash(),
        Home.routeNamed: (_) => const Home(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        Sebha.routeNamed: (_) => const Sebha(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        AhadethDetails.routeNamed: (_) => AhadethDetails(),
        Setting.routeNamed: (_) => Setting()
      },
      initialRoute: Splash.routeNamed,
    );
  }
}
