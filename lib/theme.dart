import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData themeData() {
  return ThemeData(
    appBarTheme: buildAppBar(),
    scaffoldBackgroundColor: Colors.white,
    // fontFamily: 'Sf Pro',
    textTheme: buildTextTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    primarySwatch: Colors.blue,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(color: Color(0xFFCBC8D2)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 25,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme buildTextTheme() {
  return const TextTheme(
      // bodyText1: TextStyle(color: kTextColor),
      // bodyText2: TextStyle(color: kTextColor),
      );
}

AppBarTheme buildAppBar() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: const TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 20,
      ),
    ).bodyText2,
    titleTextStyle: const TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 20,
      ),
    ).headline6,
  );
}
