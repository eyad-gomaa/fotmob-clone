import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  // ======================= colorScheme ===========================
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: ColorManager.primaryColor,
    onPrimary: Colors.white,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    surface: const Color(0xffF7F7F8),
    onSurface: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 24,
      color: ColorManager.primaryColor,
      fontWeight: FontWeight.bold,
    ),
    elevation: 0,
  ),
  // ======================= Icon Theme ===========================
  iconTheme: const IconThemeData(color: Colors.white),

  // ======================= TabBar Theme ===========================
  tabBarTheme: TabBarTheme(
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
  // ======================= BottomNavigationBar Theme ===========================
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    selectedItemColor: Colors.amber,
    unselectedItemColor: ColorManager.primaryColor,
    backgroundColor: Colors.white,
    elevation: 0.1,
  ),
);
