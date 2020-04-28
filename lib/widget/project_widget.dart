import 'dart:math';

import 'package:dhana_resume/model/project_model.dart';
import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel _project;
  ProjectWidget(this._project);

  static const colors = [
    // Colors.indigo,
    Colors.grey,
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: colors[ int.parse(_project.projId) % colors.length],
          child: Center(
            child: ListTile(
              title: Text(
                _project.projName,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              subtitle: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: _project.projClient + '\n',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black54),
                ),
                TextSpan(
                  text: _project.projDesc,
                  style: TextStyle(
                      //  fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
              ])),
              trailing: Image.network(
                _project.projImgUrl,
                semanticLabel: _project.projUrl,
                fit: BoxFit.contain,
                height: 100,
                width: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
