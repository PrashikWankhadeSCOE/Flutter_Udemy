import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = true;

  void toogleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}
