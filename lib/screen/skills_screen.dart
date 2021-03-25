import '../model/skills_model.dart';
import '../provider/skills_provider.dart';
import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';

class SkillsScreen extends StatelessWidget with NavigationStates {
   final List<SkillsModel> _skillList = SkillsProvider().getSkills;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: ListView.builder(
              itemCount: _skillList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 3.5,
                  child: ListTile(
                    leading: index % 2 == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.ac_unit,
                                color: Colors.green,
                              ),
                            ],
                          )
                        : null,
                    title: Text(_skillList[index].skillTitle!),
                    subtitle:
                        Text(_skillList[index].skillPercnt!),
                    trailing: index % 2 != 0
                        ? Icon(
                            Icons.ac_unit,
                            color: Colors.indigo,
                          )
                        : null,
                  ),
                );
              })),
    );
  }
}
