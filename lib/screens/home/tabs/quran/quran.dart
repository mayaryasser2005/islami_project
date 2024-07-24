import 'package:flutter/material.dart';
import 'package:islame_project/utils/app_assets.dart';
import 'package:islame_project/utils/app_colors.dart';
import 'package:islame_project/utils/app_style.dart';
import 'package:islame_project/utils/constants.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildheaderImage(),
        Expanded(
          flex: 70,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  buildDivider(),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          "suraname",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBartextstyle,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Verses",
                        textAlign: TextAlign.center,
                        style: AppStyle.appBartextstyle,
                      ))
                    ],
                  ),
                  buildDivider(),
                  buildSuraList()
                ],
              ),
              const VerticalDivider(
                color: AppColors.primary,
                thickness: 3,
                indent: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Expanded buildSuraList() => Expanded(
        flex: 70,
        child: ListView.builder(
            itemCount: Constants.suraNames.length,
            itemBuilder: (context, Index) {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      Constants.suraNames[Index].toString(),
                      textAlign: TextAlign.center,
                      style: AppStyle.appBartextstyle,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    Constants.versesNumber[Index].toString(),
                    textAlign: TextAlign.center,
                    style: AppStyle.appBartextstyle,
                  ))
                ],
              );
            }),
      );

  Divider buildDivider() {
    return const Divider(
      color: AppColors.primary,
      thickness: 3,
    );
  }

  Expanded buildheaderImage() {
    return Expanded(
        flex: 30,
        child: Container(
          child: Image.asset(AppAssets.quranTabLogo),
        ));
  }
}
