import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_monday/my_theme.dart';

import '../../hadeth_details.dart';
import '../../models/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/ahadeth_header.png"),
        const Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        const Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: MyThemeData.primaryColor,
              indent: 50,
              endIndent: 50,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: ahadethData[index]);
                },
                child: Text(
                  ahadethData[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  /// "Mohamed"  >> "Mohamed"
  ///  "     Moha   med    "  trim() >> "Moha   med"
  /// "  Mohamed" .trim()  >> "Mohamed"
  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        print(title);
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    });
  }
}
