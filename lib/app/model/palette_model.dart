import 'package:flutter/material.dart';

const Color baseColor = Color.fromRGBO(33, 159, 148, 1);

class PaletteModel {
  final List<Color> _items = [
    baseColor,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink
  ];

  final List<String> _labels = [
    "Baseline",
    "Blue",
    "Teal",
    "Green",
    "Yellow",
    "Orange",
    "Pink",
  ];

  List<Color> getColors() {
    return _items;
  }

  List<String> getLabels() {
    return _labels;
  }
}
