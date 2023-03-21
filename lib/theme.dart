import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: mainColor,
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Colors.black45,
          suffixIconColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          hintStyle: TextStyle(fontSize: 12, color: Colors.white),
          labelStyle: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide.none,
          ),
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        cardColor: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        canvasColor: creamColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primaryColor: mainColor,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        cardColor: Colors.black,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: lightBluishColor,
        ),
        canvasColor: darkCreamColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              fontFamily: GoogleFonts.montserrat().fontFamily,
            ),
        primaryTextTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white)),
      );

  // Colors
  static Color mainColor = const Color(0xff00D88B);
  static Color creamColor = const Color(0xfff5f5f5);
  static Color borderColor = const Color(0xff707070);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
