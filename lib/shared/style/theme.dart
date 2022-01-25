import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
    ),
  );
}

ThemeData darkTheme(){
 return ThemeData.dark();
}
