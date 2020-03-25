import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';

class SkillsScreen extends StatelessWidget with NavigationStates {
  static const List skillList = SkillsSample.skillset;
  int skillListlength = skillList.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: ListView.builder(
                itemCount: SkillsSample.skillset.length,
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
                      title: Text(SkillsSample.skillset[index]["skillName"]),
                      subtitle:
                          Text(SkillsSample.skillset[index]["skillVersion"]),
                      trailing: index % 2 != 0
                          ? Icon(
                              Icons.ac_unit,
                              color: Colors.indigo,
                            )
                          : null,
                    ),
                  );
                })),
      ),
    );
  }
}
