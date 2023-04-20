import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: Colors.indigo,
      //Appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingAction buttons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      //ElevetedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,
    //Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
