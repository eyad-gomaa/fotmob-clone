import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fotmob_clone/core/utils/theme/dark_theme.dart';
import 'package:fotmob_clone/core/utils/theme/light_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  static const String _themeKey = 'theme_mode';

  ThemeCubit() : super(lightTheme) {
    _loadTheme();
  }

  void toggleTheme() async {
    if (state == lightTheme) {
      emit(darkTheme);
      _saveTheme(true);
    } else {
      emit(lightTheme);
      _saveTheme(false);
    }
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_themeKey) ?? false;
    if (isDarkMode) {
      emit(darkTheme);
    } else {
      emit(lightTheme);
    }
  }

  void _saveTheme(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, isDarkMode);
  }
}
