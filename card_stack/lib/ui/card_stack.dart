import 'package:card_stack/ui/style/card_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:card_stack/models/card_model.dart';

class CardStack extends StatefulWidget {
  @override
  _CardStack createState() => _CardStack();
}

class _CardStack extends State<CardStack> {
  int totalCards = 0;

  Widget _buildPosition(BuildContext context, CardModel model, String card) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Positioned(
        top: 0,
        child: Dismissible(
            direction: DismissDirection.horizontal,
            key: ObjectKey(card),
            onDismissed: (direction) async {
              bool reject = (direction == DismissDirection.endToStart);
              CardSnackbar.showQuick(
                  context, reject ? 'Rejected' : 'Approved', !reject);
              reject ? model.reject(card) : model.approve(card);
            },
            child: Card(
                elevation: 0,
                color: Colors.red[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: height - height / 3,
                  width: width - 20,
                  child: Center(
                    child: Text(card,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ))));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(body:
        ScopedModelDescendant<CardModel>(builder: (context, child, model) {
      return Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
        ),
        Expanded(
            child: Center(
                child: Stack(children: <Widget>[
          Center(
            child: Text("There's no single cards in your area.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Stack(
            alignment: Alignment.center,
            children: model.cards.reversed
                .where((card) =>
                    model.cards.indexOf(card) <
                    3) // the most number of cards a user could see at once
                .map<Widget>((card) => _buildPosition(context, model, card))
                .toList(),
          ),
        ]))),
        ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
          IconButton(
              iconSize: width / 9,
              highlightColor: Colors.red,
              color: Colors.red,
              icon: Icon(Icons.add),
              tooltip: "Refresh Cards",
              onPressed: () {
                model.load();
              })
        ]),
        Padding(
          padding: EdgeInsets.all(10),
        )
      ]);
    }));
  }
}
