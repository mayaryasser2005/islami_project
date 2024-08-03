import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  Applocalizations get localization => Applocalizations.of(this)!;
}
// class Person {
//   String _name = "ahmed";
//
//   String get getname => _name + "10";
//
//   set name(String newName){
//
//     if (newName.length > 10)return;
//     _name = newName;
//   }
// }
