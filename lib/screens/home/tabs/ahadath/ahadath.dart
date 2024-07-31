import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../model/hadeth.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_style.dart';
import '../../../../utils/constants.dart';
import '../../../ahadethDetails/ahadethDetails.dart';

class Ahadath extends StatefulWidget {
  Ahadath({super.key});

  @override
  State<Ahadath> createState() => _AhadathState();
}

class _AhadathState extends State<Ahadath> {
  List<Hadeth> hadethList = [];

  void initState() {
    super.initState();
    readHadeth();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 30,
            child: Center(child: Image.asset(AppAssets.AhadathTabLogo))),
        Expanded(
          flex: 70,
          child:
              Stack // we use stack to make the VerticalDivider to be under the 2 horizontal line and the two title
                  (
                      alignment: Alignment.center,
                      // we use it to make the vertical line in the the center
                      children: [
                Column(
                  children: [
                    build_divider(),
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Sura Name",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBartextstyle,
                        )),
                      ],
                    ),
                    build_divider(),
                    buildAhadethlist(),
                  ],
                ),
              ]),
        )
      ],
    );
  }

  Future readHadeth() async {
    String ahadethFileContant =
        await rootBundle.loadString(Constants.hadethFilePath);
    List<String> ahadethAsString = ahadethFileContant.split("#\r\n");
    for (int i = 0; i > ahadethAsString.length; i++) {
      String hadeth = ahadethAsString[i];
      List<String> hadethLines = hadeth.split("\n");
      String hadeathname = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethcontant = hadethLines.join();
      hadethList.add(Hadeth(hadeathname.trim(), hadethcontant));
    }
    setState(() {});
  }

  Divider build_divider() => Divider(
        color: AppColors.primary,
        thickness: 3,
        indent: 10,
      );

  /*

    Container == Divider(color: App_Colors.primary, thickness: 3,),
    (
      width: double.infinity,
      height: 3,
      color: App_Colors.primary,
    ),

  */
  Expanded buildAhadethlist() => Expanded(
        flex: 70,
        child: hadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: AppColors.primary,
              ))
            : ListView.builder(
                itemCount: hadethList.length,
                // take the number of Sura names and Verses to build the list of Sura names
                itemBuilder: (context,
                        index) // build the Sura names list and Verses list
                    {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AhadethDetails.routeNamed,
                          arguments: hadethList[index]);
                    },
                    child: Row(
                      children: [
                        Expanded // اسماء صور
                            (
                                flex: 50,
                                child: Text(
                                  Constants.suraNames[index],
                                  textAlign: TextAlign.center,
                                  style: AppStyle.appBartextstyle,
                                )),
                      ],
                    ),
                  );
                }),
      );
}
