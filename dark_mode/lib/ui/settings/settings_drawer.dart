import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../models/dark_mode_model.dart';

class SettingsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DarkModeModel>(
        builder: (context, child, model) {
      return Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Dark Mode Drawer",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
            decoration:
                BoxDecoration(color: model.darkMode ? Colors.teal : Colors.red),
          ),
          CheckboxListTile(
              value: model.darkMode,
              title: Text("Dark Mode", style: TextStyle(fontSize: 15.0)),
              onChanged: (v) {
                model.setDarkMode(v);
              })
        ],
      ));
    });
  }
}
