import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_project/model/suraDetailArys.dart';
import 'package:islame_project/utils/app_colors.dart';

import '../../witgets/app_scaffold.dart';

class SuraDetails extends StatefulWidget {
  static const String routeNamed = "suradetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late SuraDetaiaArgs args;

  String fileContent = "";

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraDetaiaArgs;
    if (fileContent.isEmpty) {
      readFile();
    }
    return AppScaffold(
        appBarTitle: args.suraname,
        body: fileContent.isEmpty ? buildLoading() : buildSuraContant());
  }

  Center buildSuraContant() => Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Text(fileContent, textDirection: TextDirection.rtl),
            )),
      );

  Center buildLoading() => const Center(
          child: CircularProgressIndicator(
        color: AppColors.primary,
      ));

  Future readFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/quran/${args.filename}");
    List<String> fileLines = fileContent.split("\n");
    fileLines = fileLines.where((line) => line.trim().isNotEmpty).toList();
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += "(${i + 1})";
    }

    setState(() {
      fileContent = fileLines.join();
    });
  }
}
