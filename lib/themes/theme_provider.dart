import 'package:flutter/material.dart';
import 'package:music_playlist/themes/light_mode.dart';
import 'package:music_playlist/themes/dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // light mode
  ThemeData _themeData = lightMode;

  // get theme
  ThemeData get themeData => _themeData;

  // is dark mode
  bool get isDarkMode => _themeData == darkMode;

  //set theme
  set themeData(ThemeData themeDate) {
    _themeData = themeData;

    // update ui
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}