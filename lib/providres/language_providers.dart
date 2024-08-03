import 'package:flutter/material.dart';

class LanguageProviders extends ChangeNotifier {
  String Selectedlanguage = "en";

  set newLanguage(String language) {
    Selectedlanguage = language;
    notifyListeners();
  }
}
