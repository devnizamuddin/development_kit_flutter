import 'package:flutter/material.dart';

import 'color.dart';

class MsBottomNavigationTheme {
  MsBottomNavigationTheme._();

  // light mode button theme
  static const lightBottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: MsColor.cardColor,
    showUnselectedLabels: true,
    elevation: 20,
    unselectedLabelStyle: TextStyle(fontFamily: 'Jost', fontSize: 13),
    unselectedItemColor: MsColor.secondary,
    selectedItemColor: MsColor.primary,
    unselectedIconTheme: IconThemeData(color: MsColor.secondary),
    selectedIconTheme: IconThemeData(color: MsColor.primary),
  );

  // dark mode button theme
  static const darkBottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: MsColor.surfaceContainerHighest,
    showUnselectedLabels: true,
    elevation: 20,
    unselectedLabelStyle: TextStyle(fontFamily: 'Jost', fontSize: 13),
    unselectedItemColor: Colors.white,
    selectedItemColor: MsColor.primary,
    unselectedIconTheme: IconThemeData(color: Colors.white),
    selectedIconTheme: IconThemeData(color: MsColor.primary),
  );
}
