import 'package:flutter/material.dart';
import 'package:islame_project/providres/language_providers.dart';
import 'package:islame_project/utils/app_colors.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame_project/utils/extenisions.dart';
import 'package:provider/provider.dart';

import '../../../../providres/provider_theme.dart';

class Setting extends StatefulWidget {
  Setting({super.key});

  late LanguageProviders provider;

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final provider = Provider.of(context);
  bool inDarkThemeEnable = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.localization.language,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 18,
          ),
          buildLanguageMenu(),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Text(
                context.localization.theme,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Spacer(),
              buildThemeSwitch(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLanguageMenu() => DropdownButton(
        value: provider.selectedLanguage,
        items: const [
          DropdownMenuItem<String>(value: "ar", child: Text("العربيه")),
          DropdownMenuItem<String>(value: "en", child: Text("English")),
        ],
        isExpanded: true,
        onChanged: (newLanguageCode) {
          provider.newLanguage = newLanguageCode ?? provider.selectedLanguage;

          setState(() {});
        },
      );

  Widget buildThemeSwitch() => Switch(
      value: ThemeProvider.isDarkThemeEnabled,
      activeColor: AppColors.primary,
      onChanged: (newvalue) {
        ThemeProvider.newTheme = newvalue ? ThemeMode.dark : ThemeMode.light;
      });
}
