import 'package:flutter/material.dart';
import 'package:islame_project/utils/app_colors.dart';

import '../utils/app_assets.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  bool get isDarkThemeEnabled => currentTheme == ThemeMode.dark;

  set newTheme(ThemeMode themeMode) {
    currentTheme = themeMode;
    notifyListeners();
  }

  Color get primaryColor =>
      isDarkThemeEnabled ? AppColors.primaryDark : AppColors.primary;

  String get mainBackground =>
      isDarkThemeEnabled ? AppAssets.backgroundDark : AppAssets.mainBackgraond;
}
