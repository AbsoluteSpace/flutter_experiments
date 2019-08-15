import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var objects = [];
    var itemCount = 200;

    for (int i = 0; i < itemCount; i++) {
      objects.add(i);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Builder ListView"),
        ),
        body: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, obj) {
            return Column(children: <Widget>[
              Padding(padding: EdgeInsets.all(2)),
              Container(
                child: ListTile(title: Text(obj.toString())),
                decoration: new BoxDecoration(
                    color: Colors.purple[50],
                    border: new Border.all(color: Colors.purple)),
              ),
              Padding(padding: EdgeInsets.all(2))
            ]);
          },
        ));
  }
}
