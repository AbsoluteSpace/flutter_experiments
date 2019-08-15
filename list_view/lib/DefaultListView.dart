import 'package:flutter/material.dart';

class DefaultListView extends StatelessWidget {
  Widget _buildTile(BuildContext context, int obj) {
    return Column(children: <Widget>[
      Padding(padding: EdgeInsets.all(2)),
      Container(
        child: ListTile(title: Text(obj.toString())),
        decoration: new BoxDecoration(
            color: Colors.green[50],
            border: new Border.all(color: Colors.green)),
      ),
      Padding(padding: EdgeInsets.all(2))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    var objects = [];

    for (int i = 0; i < 200; i++) {
      objects.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Default ListView"),
      ),
      body: ListView(
          children:
              objects.map<Widget>((obj) => _buildTile(context, obj)).toList()),
    );
  }
}
