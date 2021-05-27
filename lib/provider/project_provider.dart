import 'dart:collection';

import 'package:dhana_resume/helper/service_helper.dart';
import 'package:dhana_resume/model/resumeException_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';


import '../model/project_model.dart';
import '../utils/utils.dart';

class ProjectProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbProjectDataURL);
  ServiceHelper service = ServiceHelper();
  List<ProjectModel> _projects = [];

  UnmodifiableListView<ProjectModel> get getProjects =>
      UnmodifiableListView(_projects);

  ProjectModel getProject(index) {
    return getProjects[index];
  }

  Future<void> fetchAndSetProjects() async {
    try {
      if (getProjects.isEmpty) {
        final response = await service.getServiceRequest(url);
        final extractedData = jsonDecode(response) as List;
        final List<ProjectModel> loadedData = [];
        extractedData.forEach((projData) {
          loadedData.add(
            ProjectModel.fromJson(jsonEncode(projData))!,
          );
        });

        _projects = loadedData;
        notifyListeners();
      }
    } on ResumeException catch(e){
      throw e;
    } catch (error) {
      throw (error);
    }
  }
}
