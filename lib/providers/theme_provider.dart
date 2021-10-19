import 'package:flutter/material.dart';
import 'package:flutter_provider_starter/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool isLightTheme;

  ThemeProvider({this.isLightTheme = true});

  ThemeData get getThemeData =>
      isLightTheme ? lightTheme : darkTheme;

  set setThemeData(bool val) {
    if (val) {
      isLightTheme = true;
    } else {
      isLightTheme = false;
    }
    notifyListeners();
  }
}
