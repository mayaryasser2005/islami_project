import 'package:flutter/cupertino.dart';
import 'package:islame_project/utils/app_colors.dart';

abstract class AppStyle {
  static const TextStyle appBartextstyle = TextStyle(
      color: AppColors.accent, fontSize: 28, fontWeight: FontWeight.bold);

  static const TextStyle titlestextstyle = TextStyle(
      color: AppColors.accent, fontSize: 30, fontWeight: FontWeight.w600);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor = AppColors.transparent,
      primaryColor = AppColors.primary,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.transparent,
          titlestextstyle: appBarstyle,
          elevation: 0,
          centerTitle: true),
      textTheme: TextTheme(
        displayLarge: titlestextstyle,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor = AppColors.transparent,
      primaryColor = AppColors.primaryDark,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.transparent,
          titlestextstyle: appBartextstyle.copyWith(color: AppColors.White),
          elevation: 0,
          centerTitle: true),
      textTheme: TextTheme(
        displayLarge: titlestextstyle.copyWith(color: AppColors.White),
      ));
}
