import 'package:flutter/material.dart';
import 'package:islame_project/providres/language_providers.dart';
import 'package:islame_project/utils/app_colors.dart';
import 'package:provider/provider.dart';


class Setting extends StatefulWidget {
  Setting({super.key});

  late LanguageProviders provider;

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late final provider = Provider.of(context);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "lang",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 18,
          ),
          buildLanguageMenu(),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Text(
                "context.localization.theme",
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
      value: provider.isDarkThemeEnabled,
      activeColor: AppColors.primary,
      onChanged: (newvalue) {
        provider.newTheme = newvalue ? ThemeMode.dark : ThemeMode.light;
      });
}
