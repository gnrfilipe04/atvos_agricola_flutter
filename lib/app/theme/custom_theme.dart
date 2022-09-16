import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme with ChangeNotifier {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: CustomColors.orange,
      backgroundColor: CustomColors.blueDark,
      splashColor: CustomColors.blueDark,
      scaffoldBackgroundColor: CustomColors.blueDark,
      fontFamily: 'Roboto',
      textTheme: ThemeData.dark().textTheme,
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.orange,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          color: CustomColors.grey
        ),
        floatingLabelStyle: TextStyle(
          color: CustomColors.orange,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blueGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: CustomColors.orange),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: CustomColors.error),
        ),
      ),
    );
  }
}
