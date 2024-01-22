import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/variables/pallete.dart';

// custom material theme
ThemeData mainThemeData(context) {
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 193, 193, 193),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 193, 193, 193),
        ),
      ),
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 193, 193, 193),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
    ),
    // listTileTheme: ListTileThemeData(
    //   contentPadding: EdgeInsets.zero,
    // ),
    // buttonTheme: ButtonThemeData(
    //   textTheme: ButtonTextTheme.normal,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
        elevation: const MaterialStatePropertyAll(0),
        foregroundColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),

    // text align left
    colorScheme: lightColorScheme,
    useMaterial3: true,
  );
}
