import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const defaultPadding = 16.0;
  static const paddingSmall = 8.0;
  static const paddingMedium = 24.0;
  static const paddingLarge = 32.0;

  static const purple = Color(0xFF462b49);
  static const purpleBG = Color(0xFFF4F4FA);
  static const pink = Color(0xFFFF4165);

  static ThemeData getAppTheme() {
    ThemeData base = ThemeData();

    return base.copyWith(
        primaryColor: purple,
        accentColor: pink,
        textTheme: GoogleFonts.rubikTextTheme(base.textTheme.copyWith(
          headline6: base.textTheme.headline6.copyWith(color: purple, fontWeight: FontWeight.w600),
          headline5: base.textTheme.headline5.copyWith(),
          headline4: base.textTheme.headline4.copyWith(),
          headline3: base.textTheme.headline3.copyWith(),
          headline2: base.textTheme.headline2.copyWith(),
          headline1: base.textTheme.headline1.copyWith(),
          bodyText1: base.textTheme.bodyText1.copyWith(),
          bodyText2: base.textTheme.bodyText2.copyWith(),
        )),
        buttonColor: purple,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: purple,
          ),
        ));
  }
}
