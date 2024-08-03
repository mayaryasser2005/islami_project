import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islame_project/providres/language_providers.dart';
import 'package:islame_project/providres/provider_theme.dart';
import 'package:islame_project/screens/ahadethDetails/ahadethDetails.dart';
import 'package:islame_project/screens/home/home.dart';
import 'package:islame_project/screens/home/tabs/sebha/sebha.dart';
import 'package:islame_project/screens/splash/splash.dart';
import 'package:islame_project/screens/suradetails/suradetails.dart';
import 'package:islame_project/utils/app_style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeProvider(),
    child: ChangeNotifierProvider(
        create: (context) => LanguageProviders(), child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  LanguageProviders languageProviders = Provider.of(context);
  ThemeProvider themeProvider = Provider.of(context);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(provider.Selectedlanguage),
      routes: {
        Splash.routeNamed: (_) => const Splash(),
        Home.routeNamed: (_) => const Home(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        Sebha.routeNamed: (_) => const Sebha(),
        SuraDetails.routeNamed: (_) => SuraDetails(),
        AhadethDetails.routeNamed: (_) => AhadethDetails(),
      },
      initialRoute: Splash.routeNamed,
    );
  }
}
