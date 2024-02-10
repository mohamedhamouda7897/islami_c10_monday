import 'package:flutter/material.dart';
import 'package:islami_c10_monday/home/home.dart';
import 'package:islami_c10_monday/home/tabs/radio_tab.dart';
import 'package:islami_c10_monday/my_theme.dart';
import 'package:islami_c10_monday/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName: (context) =>   HomeScreen(),
        SuraDetailsScreen.routeName: (context) =>   SuraDetailsScreen(),
        RadioTab.routeName: (context) => RadioTab(),
      },
    );
  }
}
