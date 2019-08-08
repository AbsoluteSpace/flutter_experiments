import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Range Slider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues _continuousValues = RangeValues(0.0, 0.7);
  RangeValues _discreteValues = RangeValues(0, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Range Slider Demo"),
        ),
        body: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(50)),
          Text("Continuous Range Slider"),
          Text("Start: " + _continuousValues.start.toStringAsFixed(2)),
          Text("End: " + _continuousValues.end.toStringAsFixed(2)),
          RangeSlider(
            values: _continuousValues,
            onChanged: (RangeValues values) {
              setState(() {
                _continuousValues = values;
              });
            },
          ),
          Padding(padding: EdgeInsets.all(50)),
          Text("Discrete Range Slider"),
          Text("Start: " + _discreteValues.start.toStringAsFixed(2)),
          Text("End: " + _discreteValues.end.toStringAsFixed(2)),
          RangeSlider(
            divisions: 4,
            values: _discreteValues,
            onChanged: (RangeValues values) {
              setState(() {
                _discreteValues = values;
              });
            },
          ),
        ]));
  }
}
