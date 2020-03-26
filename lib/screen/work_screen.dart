import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<Map<String, String>> workSample = WorkSample.workset;
  double _diameterRatio = 2;

  double _offAxisFraction = 0;

  double _magnification = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        SizedBox(
          height: 300,
          child: ListWheelScrollView(
              useMagnifier: _magnification > 1,
              magnification: _magnification,
              diameterRatio: _diameterRatio,
              offAxisFraction: _offAxisFraction,
              itemExtent: 100,
              children: <Widget>[
                for( int i = 0 ; i < workSample.length; i++)
                MyItem(index: i)
                
              ]),
        ),
        Spacer(),
        Text('offAxisFraction'),
        Slider(
          value: _offAxisFraction,
          onChanged: (newValue) => setState(() => _offAxisFraction = newValue),
          min: -2,
          max: 2,
        ),
        Text('diameterRatio'),
        Slider(
          value: _diameterRatio,
          onChanged: (newValue) => setState(() => _diameterRatio = newValue),
          min: 0.1,
          max: 10,
        ),
        Text('magnification'),
        Slider(
          value: _magnification,
          onChanged: (newValue) => setState(() => _magnification = newValue),
          min: 1,
          max: 3,
        ),
      ],
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;

  MyItem({@required this.index, Key key}) : super(key: key);

  static const colors = [
    Colors.pink,
    Colors.indigo,
    Colors.grey,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: colors[index % colors.length],
          child: ListTile(
            title: Text(
              WorkSample.workset[index]['workName'],
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              WorkSample.workset[index]["workDesg"],
            ),
          ),
        ),
      ),
    );
  }
}
