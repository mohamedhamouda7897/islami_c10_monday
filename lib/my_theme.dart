import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Colors.amber;

  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        displaySmall: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: blackColor),
        displayLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: primaryColor),
        bodyLarge:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium:
            GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w300),
        bodySmall:
            GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      // colorScheme: ColorScheme(
      //     brightness: Brightness.light,
      //     primary: primaryColor,
      //     onPrimary: Colors.white,
      //     secondary: blackColor,
      //     onSecondary: Colors.transparent,
      //     error: Colors.red,
      //     onError: Colors.white,
      //     background: Colors.transparent,
      //     onBackground: Colors.transparent,
      //     surface: primaryColor,
      //     onSurface: Colors.white),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54)));

  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        displaySmall: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        displayLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: yellowColor),
        bodyLarge:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium:
            GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w300),
        bodySmall:
            GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      // colorScheme: ColorScheme(
      //     brightness: Brightness.dark,
      //     primary: primaryDarkColor,
      //     onPrimary: Colors.white,
      //     secondary: yellowColor,
      //     onSecondary: Colors.transparent,
      //     error: Colors.red,
      //     onError: Colors.white,
      //     background: Colors.transparent,
      //     onBackground: Colors.transparent,
      //     surface: primaryDarkColor,
      //     onSurface: Colors.white),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)));
}
