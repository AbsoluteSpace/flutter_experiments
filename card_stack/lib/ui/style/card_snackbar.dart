import 'package:flutter/material.dart';

enum cardAction { approve, reject }

class CardSnackbar {
  static Color _green = Color(0xFF12B885);
  static Color _red = Color(0xFFCC1A4C);

  static void show(
      BuildContext context, String card, cardAction actionPerformed) {
    String actionDisplay =
        (actionPerformed == cardAction.approve) ? "Approved" : "Rejected";
    Color snackBackground =
        (actionPerformed == cardAction.approve) ? _green : _red;
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("'$card' $actionDisplay"),
        backgroundColor: snackBackground,
        duration: Duration(seconds: 2)));
  }

  static void showQuick(BuildContext context, String textContent,
      [bool success = true]) {
    Scaffold.of(context).showSnackBar(SnackBar(
        duration: Duration(milliseconds: 200),
        backgroundColor: success ? _green : _red,
        content: Text(textContent)));
  }
}
