import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'models/card_model.dart';
import 'ui/main.dart';

void main() {
  return runApp(MyApp());
}

class MyAppState extends State<MyApp> {
  final CardModel _model = CardModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CardModel>(
      model: _model,
      child: ScopedModelDescendant<CardModel>(builder: (context, child, model) {
        return MaterialApp(
            title: "Flutter Card Stack",
            home: ScopedModelDescendant<CardModel>(
                builder: (context, child, model) {
              return Main();
            }),
            theme: ThemeData.light());
      }),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
