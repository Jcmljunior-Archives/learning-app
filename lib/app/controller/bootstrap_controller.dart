import 'package:flutter/material.dart';

import '../model/palette_model.dart';

class BootstrapController {
  bool useMaterial3 = true;
  bool useLightMode = true;
  int colorSelected = 0;

  late ThemeData themeData;

  ThemeData updateTheme(int colorIndex, bool useMaterial3, bool useLightMode) {
    return ThemeData(
      colorSchemeSeed: PaletteModel.colorItems.elementAt(colorSelected),
      useMaterial3: useMaterial3,
      brightness: useLightMode ? Brightness.light : Brightness.dark,
    );
  }

  void handleBrightnessChange() {
    useLightMode = !useLightMode;
    themeData = updateTheme(colorSelected, useMaterial3, useLightMode);
  }

  void handleMaterialVersionChange() {
    useMaterial3 = !useMaterial3;
    themeData = updateTheme(colorSelected, useMaterial3, useLightMode);
  }

  void handleColorSelect(int value) {
    colorSelected = value;
    themeData = updateTheme(colorSelected, useMaterial3, useLightMode);
  }
}
