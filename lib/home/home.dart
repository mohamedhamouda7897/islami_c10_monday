import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_monday/home/tabs/ahadeth_tab.dart';
import 'package:islami_c10_monday/home/tabs/quran_tab.dart';
import 'package:islami_c10_monday/home/tabs/radio_tab.dart';
import 'package:islami_c10_monday/home/tabs/sebha_tab.dart';
import 'package:islami_c10_monday/home/tabs/settings_tab.dart';

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
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "إسلامي",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: const Color(0xFFB7935F),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              iconSize: 35,
              elevation: 0,
              unselectedItemColor: Colors.black38,
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
    const QuranTab(),
    const SebhaTab(),
    const AhadethTab(),
    const RadioTab(),
    const SettingsTab()
  ];
}
