import 'package:dhana_resume/provider/project_providers.dart';
import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/project_widget.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  // List<Map<String, String>> workSample = WorkSample.workset;
  double _diameterRatio = 2;

  double _offAxisFraction = -0.7;

  double _magnification = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 3,
            child: RichText(
              text: TextSpan(
                text: "PROJECTS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.amber),
              ),
            ),
          ),
        ),
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
