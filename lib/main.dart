import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_monday/hadeth_details/hadeth_details.dart';
import 'package:islami_c10_monday/hadeth_details/hadeth_details_provider.dart';
import 'package:islami_c10_monday/home/home.dart';
import 'package:islami_c10_monday/my_theme.dart';
import 'package:islami_c10_monday/providers/my_provider.dart';
import 'package:islami_c10_monday/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

import 'bottom_sheets/language_bottom_sheet.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
    ),
    ChangeNotifierProvider<HadethDetailsProvider>(
      create: (context) => HadethDetailsProvider()..loadHadethFile(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      locale: Locale("${provider.languageCode}"),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
