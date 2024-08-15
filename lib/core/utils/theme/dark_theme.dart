import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorManager.primaryColor,
      onPrimary: Colors.white,
      secondary: const Color(0xff03dac6),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.black,
      surface: ColorManager.darkGreyColor,
      onSurface: Colors.white),
  appBarTheme: const AppBarTheme(
    elevation: 0,
  ),
  tabBarTheme:  
  TabBarTheme(
    labelPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
    labelColor: Colors.white,
    indicatorColor: ColorManager.primaryColor,
    splashFactory: NoSplash.splashFactory,
    unselectedLabelColor: ColorManager.primaryColor,
    indicator: BoxDecoration(
      color: ColorManager.primaryColor,
      borderRadius: BorderRadius.circular(12),
    ),
    dividerHeight: 0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    selectedItemColor: ColorManager.primaryColor,
    unselectedItemColor: Colors.white,
  ),
);
