import 'package:provider/provider.dart';

import '../utils/app_assets.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  bool get isDarkThemeEnabled => currentTheme == ThemeMode.dark;

  set newTheme(ThemeMode themeMode) {
    currentTheme = themeMode;
    notifyListeners();
  }

  String get mainBackground =>
      isDarkThemeEnabled ? AppAssets.backgroundDark : AppAssets.mainBackgraond;
}
