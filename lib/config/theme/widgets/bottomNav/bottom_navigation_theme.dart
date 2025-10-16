import 'package:flutter/material.dart';

import '../../color.dart';

class MsBottomNavigationTheme {
  MsBottomNavigationTheme._();

  // light mode button theme
  static const lightBottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: Colors.white, // Background color of nav bar
    selectedItemColor: MsColor.primary,
    unselectedItemColor: Colors.black,
    selectedIconTheme: IconThemeData(size: 28), // Size for selected icons
    unselectedIconTheme: IconThemeData(size: 24), // Size for unselected icons
    selectedLabelStyle: TextStyle(
      // Style for selected label
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: TextStyle(
      // Style for unselected label
      fontWeight: FontWeight.w400,
    ),
    type: BottomNavigationBarType.fixed, // Or shifting
    elevation: 16,
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
