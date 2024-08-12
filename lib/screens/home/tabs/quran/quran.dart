import 'package:flutter/material.dart';

import '../../../../model/suraDetailArys.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/constants.dart';
import '../../../suradetails/suradetails.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 30,
            child: Center(child: Image.asset(AppAssets.quranTabLogo))),
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
                    buildDivider(),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Sura Name",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        )),
                        Expanded(
                            child: Text(
                          "Verses",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        )),
                      ],
                    ),
                    buildDivider(),
                    buildsuralist(),
                  ],
                ),

                const VerticalDivider(
                  thickness: 3,
                  color: AppColors.primary,
                  indent: 9,
                )
                // The vertical line to separate the two lists.
                // NOTE:  we use (indent: 9) to make the vertical line not to cross the line
                // if you want to try delete (indent: 9)
              ]),
        )
      ],
    );
  }

  Divider buildDivider() => const Divider(
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

  Expanded buildsuralist() => Expanded(
        flex: 70,
        child: ListView.builder(
            itemCount: Constants.suraNames.length,
            // take the number of Sura names and Verses to build the list of Sura names
            itemBuilder:
                (context, index) // build the Sura names list and Verses list
                {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SuraDetails.routeNamed,
                      arguments: SuraDetaiaArgs(
                          suraname: Constants.suraNames[index],
                          filename: "${index + 1}.txt"));
                },
                child: Row(
                  children: [
                    Expanded // اسماء صور
                        (
                            flex: 50,
                            child: Text(
                              Constants.suraNames[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge,
                            )),
                    Expanded // عدد الايات في كل صورة
                        (
                            flex: 50,
                            child: Text(
                              Constants.versesNumber[index].toString(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge,
                            ))
                  ],
                ),
              );
            }),
      );
}