import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/project_model.dart';
import '../utils/utils.dart';

class ProjectProvider with ChangeNotifier {
  static const url = UrlLinks.fbProjectDataURL;

  List<ProjectModel> _projects;

  List<ProjectModel> getProjects() {
    return _projects;
  }

  ProjectModel getProject( index ){
    return _projects[ index ];
  }

  Future<void> fetchAndSetProjects() async {
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as List;
      final List<ProjectModel> loadedData = [];
      extractedData.forEach((projData) {
        loadedData.add(
          ProjectModel(
            projId: projData["projId"],
            projName: projData["projName"],
            projClient: projData["projClient"],
            projDesc: projData["projDesc"],
            projImgUrl: projData["projImgUrl"],
            projUrl: projData["projUrl"],
          ),
        );
      });

      _projects = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
