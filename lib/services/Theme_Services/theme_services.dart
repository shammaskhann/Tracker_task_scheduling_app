import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  void saveThemeMode(bool isDarkMode) {
    _box.write(_key, isDarkMode);
  }

  bool getThemeMode() {
    return _box.read(_key) ?? false;
  }

  ThemeMode getThemeModeValue() {
    return getThemeMode() ? ThemeMode.dark : ThemeMode.light;
  }
}
