import 'package:flutter/material.dart';

class SeparatedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var objects = [];
    var itemCount = 200;
    var frequency = 3;

    for (int i = 0; i < itemCount; i++) {
      objects.add(i);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Default ListView"),
        ),
        body: ListView.separated(
            itemCount: itemCount,
            itemBuilder: (context, obj) {
              return Column(children: <Widget>[
                Padding(padding: EdgeInsets.all(2)),
                Container(
                  child: ListTile(title: Text(obj.toString())),
                  decoration: new BoxDecoration(
                      color: Colors.blue[50],
                      border: new Border.all(color: Colors.blue)),
                ),
                Padding(padding: EdgeInsets.all(2))
              ]);
            },
            separatorBuilder: (BuildContext context, int index) {
              if (index % frequency == 0) {
                return Column(children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),
                  Container(
                    child: ListTile(title: Text("Separator")),
                    decoration: new BoxDecoration(
                        color: Colors.red[50],
                        border: new Border.all(color: Colors.red)),
                  ),
                  Padding(padding: EdgeInsets.all(2))
                ]);
              }

              return Column(children: <Widget>[]);
            }));
  }
}
