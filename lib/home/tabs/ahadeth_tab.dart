import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_monday/my_theme.dart';
import 'package:provider/provider.dart';

import '../../hadeth_details/hadeth_details.dart';
import '../../hadeth_details/hadeth_details_provider.dart';
import '../../models/hadeth_model.dart';

class AhadethTab extends StatelessWidget {
  AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {

        var provider = Provider.of<HadethDetailsProvider>(context);
        return Column(
          children: [
            Image.asset("assets/images/ahadeth_header.png"),
            const Divider(
              thickness: 3,
              color: Color(0xFFB7935F),
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600),
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
                      provider.selectHadethModel(index);
                      Navigator.pushNamed(
                        context,
                        HadethDetails.routeName,
                      );
                    },
                    child: Text(
                      provider.ahadethData[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
                itemCount: provider.ahadethData.length,
              ),
            )
          ],
        );

  }
}
