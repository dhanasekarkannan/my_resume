import '../model/project_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/project_widget.dart';
import '../widget/barChart_widget.dart';
import '../provider/project_provider.dart';
import '../provider/skills_provider.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  bool _isInit = true;
  bool _isSkillsLoading = true;
  bool _isProjectsLoading = true;

  double _diameterRatio = 2;

  double _offAxisFraction = -0.7;

  double _magnification = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isInit = false;
      });
      if (_isSkillsLoading) {
        Provider.of<SkillsProvider>(context).fetchAndSetSkills().then((_) {
          setState(() {
            _isSkillsLoading = false;
          });
        });
      }
      if (_isProjectsLoading) {
        Provider.of<ProjectProvider>(context).fetchAndSetProjects().then((_) {
          setState(() {
            _isProjectsLoading = false;
          });
        });
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2.2,
          child: _isSkillsLoading
              ? Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.amber,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Consumer<SkillsProvider>(
                  builder: (_, skills, child) {
                    return BarChartWidget(skills);
                  },
                ),
        ),
        Expanded(
          child: _isProjectsLoading
              ? Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.amber,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Consumer<ProjectProvider>(
                  builder: (_, projects, child) {
                    return ListWheelScrollView(
                      useMagnifier: _magnification > 1,
                      magnification: _magnification,
                      diameterRatio: _diameterRatio,
                      offAxisFraction: _offAxisFraction,
                      itemExtent: 100,
                      children: <Widget>[
                        for (ProjectModel project
                            in projects.getProjects()!.reversed)
                          ProjectWidget(project),
                      ],
                    );
                  },
                ),
        ),
      ],
    );
  }
}
