import 'package:flutter/material.dart';
import 'package:dark_mode/helper.dart';
import 'package:dark_mode/ui/settings/settings_drawer.dart';
import 'package:dark_mode/models/dark_mode_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RenderState();
  }
}

class _RenderState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DarkModeModel>(
        builder: (context, child, model) {
      return Scaffold(
          appBar: AppBar(
              iconTheme: IconThemeData(
                  color: isDarkModeEnabled(model, Colors.white, Colors.black)),
              title: Text("Flutter Dark Mode",
                  style: TextStyle(
                      color: isDarkModeEnabled(
                          model, Colors.white, Colors.black)))),
          drawer: SettingsDrawer(),
          body:
              Center(child: Text("Spooky", style: TextStyle(fontSize: 20.0))));
    });
  }
}
