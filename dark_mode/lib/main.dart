import 'package:dark_mode/models/dark_mode_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:dark_mode/ui/main.dart';

void main() {
  return runApp(MyApp());
}

class MyAppState extends State<MyApp> {
  final DarkModeModel _model = DarkModeModel();

  @override
  void initState() {
    _model.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<DarkModeModel>(
      model: _model,
      child: ScopedModelDescendant<DarkModeModel>(
          builder: (context, child, model) {
        return MaterialApp(
          title: "Flutter Dark Mode",
          home: Main(),
          theme: _model.darkMode
              ? ThemeData(
                  brightness: Brightness.dark, primaryColor: Colors.teal)
              : ThemeData(
                  brightness: Brightness.light, primaryColor: Colors.red),
        );
      }),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
