import 'package:flutter/cupertino.dart';

import '../../../../utils/app_assets.dart';

class MyRadio extends StatelessWidget {
  const MyRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
              width: double.infinity,
              // color: Color.fromRGBO(233, 186, 108, 1.0),

              alignment: Alignment.center,
              child: FittedBox(child: Image.asset(AppAssets.radioTabLogo)
                  //We use FittedBox to solve the small image problem to create the right size image for the application
                  )),
        ),
        const SizedBox(height: 20),
        const Text(
          "اذان القران الكريم",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        Expanded(
          flex: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ImageIcon(color: AppColors.primary,AssetImage(AppAssets.ic_mrtro_back)),
              //  ImageIcon(color: AppColors.primary,AssetImage(AppAssets.ic_awsesome_play)),
              //  ImageIcon(color: AppColors.primary,AssetImage(AppAssets.ic_mrtro_next)),

              Image.asset(AppAssets.ic_mrtro_back),
              Image.asset(AppAssets.ic_awsesome_play),
              Image.asset(AppAssets.ic_mrtro_next)
            ],
          ),
        ),
        const SizedBox(height: 100),
      ]),
    );
  }
}
