import 'package:dark_mode/models/dark_mode_model.dart';
import 'package:flutter/material.dart';

Color isDarkModeEnabled(DarkModeModel model, Color dark, Color light) {
  return model.darkMode ? dark : light;
}
