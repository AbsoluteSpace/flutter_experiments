import 'package:card_stack/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../models/card_model.dart';
import 'card_stack.dart';

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
        appBar: AppBar(title: Text("Flutter Card Stack")),
        body:
            ScopedModelDescendant<CardModel>(builder: (context, child, model) {
          return CardStack();
        }));
  }
}
