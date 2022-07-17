import 'package:flutter/material.dart';
import 'package:learning_app/app/model/palette_model.dart';

class BootstrapController {
  bool useMaterial3 = true;
  bool useLightMode = true;
  int colorSelected = 0;

  PaletteModel paletteModel = PaletteModel();

  late ThemeData themeData;

  ThemeData updateTheme(int colorIndex, bool useMaterial3, bool useLightMode) {
    return ThemeData(
      colorSchemeSeed: paletteModel.getColors()[colorSelected],
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
