import 'package:flutter/material.dart';
import 'settings/settings_drawer.dart';

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RenderState();
  }
}

class _RenderState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Dark Mode")),
        drawer: SettingsDrawer(),
        body: Center(child: Text("Spooky", style: TextStyle(fontSize: 20.0))));
  }
}
