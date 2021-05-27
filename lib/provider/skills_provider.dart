import 'dart:collection';
import 'dart:convert';

import 'package:dhana_resume/helper/service_helper.dart';
import 'package:dhana_resume/model/resumeException_model.dart';
import 'package:flutter/material.dart';

import '../model/skills_model.dart';
import '../utils/utils.dart';

class SkillsProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbSkillDataURL);
  ServiceHelper service = ServiceHelper();

  List<SkillsModel> _skills = [];

  UnmodifiableListView<SkillsModel> get getSkills =>
      UnmodifiableListView(_skills);

  String getSkillKey(int index) {
    return getSkills[index].skillKey;
  }

  String getSkillTitle(int index) {
    return getSkills[index].skillTitle;
  }

  double getSkillPercentDouble(int index) {
    return double.parse(getSkills[index].skillPercnt);
  }

  Future<void> fetchAndSetSkills() async {
    try {
      if (getSkills.isEmpty) {
        final response = await service.getServiceRequest(url);
        final extractedData = jsonDecode(response) as List;
        final List<SkillsModel> loadedData = [];
        extractedData.forEach((skillData) {
          loadedData.add(SkillsModel.fromJson(jsonEncode(skillData))!);
        });

        _skills = loadedData;
        notifyListeners();
      }
    } on ResumeException catch (e) {
      throw e;
    } catch (error) {
      throw (error);
    }
  }
}
