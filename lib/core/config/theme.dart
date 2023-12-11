import 'package:flutter/material.dart';
import 'package:payment_app_screen/core/config/text_styles.dart';

ThemeData myTheme() {
  return ThemeData(
      // buttonTheme: ButtonThemeData(
      //   buttonColor:Color(0xFF34A853),
      // ),
      fontFamily: 'Inter',
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          titleTextStyle: Styles.textStyle25,
          centerTitle: true),
      scaffoldBackgroundColor: Colors.white);
}
