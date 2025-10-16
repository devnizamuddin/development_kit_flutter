import 'package:flutter/material.dart';

import 'color.dart';

class AppBottomNavigationTheme {
  AppBottomNavigationTheme._();

  // light mode button theme
  static const lightBottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: AppColors.cardColor,
    showUnselectedLabels: true,
    elevation: 20,
    unselectedLabelStyle: TextStyle(fontFamily: 'Jost', fontSize: 13),
    unselectedItemColor: AppColors.secondary,
    selectedItemColor: AppColors.primary,
    unselectedIconTheme: IconThemeData(color: AppColors.secondary),
    selectedIconTheme: IconThemeData(color: AppColors.primary),
  );

  // dark mode button theme
  static const darkBottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: AppColors.surfaceContainerHighest,
    showUnselectedLabels: true,
    elevation: 20,
    unselectedLabelStyle: TextStyle(fontFamily: 'Jost', fontSize: 13),
    unselectedItemColor: Colors.white,
    selectedItemColor: AppColors.primary,
    unselectedIconTheme: IconThemeData(color: Colors.white),
    selectedIconTheme: IconThemeData(color: AppColors.primary),
  );
}
