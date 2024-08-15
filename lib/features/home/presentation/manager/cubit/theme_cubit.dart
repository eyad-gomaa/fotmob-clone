import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/theme/dark_theme.dart';
import 'package:fotmob_clone/core/utils/theme/light_theme.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  bool? value;
  getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool("isDark");
    if (isDark == null) {
      prefs.setBool("isDark", false);
      value = false;
    }
    if (isDark == true) {
      value = true;
    } else {
      value = false;
    }
    emit(ChangeTheme());
  }

  updateValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isDark", !value!);
    await getValue();
  }

  void changeTheme() {
    updateValue();
    emit(ChangeTheme());
  }

  ThemeData selectedTheme() {
    if (value == false) {
      return darkTheme;
    }
    return lightTheme;
  }
}
