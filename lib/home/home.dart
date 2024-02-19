import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_monday/home/tabs/ahadeth_tab.dart';
import 'package:islami_c10_monday/home/tabs/quran_tab.dart';
import 'package:islami_c10_monday/home/tabs/radio_tab.dart';
import 'package:islami_c10_monday/home/tabs/sebha_tab.dart';
import 'package:islami_c10_monday/home/tabs/settings_tab.dart';
import 'package:islami_c10_monday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackgroundPath(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,

              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                    label: "add"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                    label: "add"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png")),
                    label: "add"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                    label: "add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "add"),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    AhadethTab(),
    const RadioTab(),
    const SettingsTab()
  ];
}
