import 'package:flutter/material.dart';

import '../../model/hadeth.dart';
import '../../witgets/app_scaffold.dart';

class AhadethDetails extends StatefulWidget {
  static const String routeNamed = "hadeth_Details";

  AhadethDetails({super.key});

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}

class _AhadethDetailsState extends State<AhadethDetails> {
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;

    return AppScaffold(
        appBarTitle: hadeth.title, body: buildHadethContant(hadeth.contant));
  }

  Center buildHadethContant(String contant) => Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Text(contant, textDirection: TextDirection.rtl),
            )),
      );
}
