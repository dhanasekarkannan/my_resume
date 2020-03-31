import 'package:dhana_resume/model/project_model.dart';
import 'package:dhana_resume/provider/project_providers.dart';
import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  final List<ProjectData> _projects = ProjectProviders().getProjects();

  final int index;

  ProjectWidget({@required this.index});

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
          color: colors[index % colors.length],
          child: Center(
            child: ListTile(
              title: Text(
                _projects[index].projName,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              subtitle: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: _projects[index].projClient + '\n',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black54),
                ),
                TextSpan(
                  text: _projects[index].projDesc,
                  style: TextStyle(
                      //  fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
              ])),
              trailing: Image.network(
                _projects[index].projImgUrl,
                semanticLabel: _projects[index].projUrl,
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
