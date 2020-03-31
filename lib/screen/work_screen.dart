import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/project_widget.dart';
import '../widget/barChart_widget.dart';
import '../provider/project_providers.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  double _diameterRatio = 2;

  double _offAxisFraction = -0.7;

  double _magnification = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       
        Container(
          height: MediaQuery.of(context).size.height / 2.2,
          child: BarChartWidget(),),

        Expanded(
          child: ListWheelScrollView(
              useMagnifier: _magnification > 1,
              magnification: _magnification,
              diameterRatio: _diameterRatio,
              offAxisFraction: _offAxisFraction,
              itemExtent: 100,
              children: <Widget>[
                for (int i = 0;
                    i < ProjectProviders().getProjects().length;
                    i++)
                  ProjectWidget(index: i)
              ]),
        ),
      ],
    );
  }
}
