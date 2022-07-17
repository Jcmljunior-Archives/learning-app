import 'package:flutter/material.dart';

const Color baseColor = Color.fromRGBO(33, 159, 148, 1);
const List<Color> colorOptions = [
  baseColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
const List<String> colorText = <String>[
  "Baseline",
  "Blue",
  "Teal",
  "Green",
  "Yellow",
  "Orange",
  "Pink",
];

class BootstrapModel {
  bool useMaterial3;
  bool useLightMode;
  int colorSelected;

  late ThemeData themeData;

  BootstrapModel({
    required this.useMaterial3,
    required this.useLightMode,
    required this.colorSelected,
  });

  ThemeData updateTheme(int colorIndex, bool useMaterial3, bool useLightMode) {
    return ThemeData(
      colorSchemeSeed: colorOptions[colorSelected],
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
