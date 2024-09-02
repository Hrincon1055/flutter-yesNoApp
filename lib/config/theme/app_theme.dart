import 'package:flutter/material.dart';

const Color _custonColor = Color(0xFF5C11D4);
const List<Color> _colorThemes = [
  _custonColor,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.light);
  }
}
