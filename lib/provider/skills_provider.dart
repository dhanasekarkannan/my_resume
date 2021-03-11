import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/skills_model.dart';
import '../utils/utils.dart';

class SkillsProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbSkillDataURL);

  List<SkillsModel> _skills = [];

  List<SkillsModel> getSkills() {
    return _skills;
  }

  String getSkillKey(int index) {
    return _skills[index].skillKey;
  }

  String getSkillTitle(int index) {
    return _skills[index].skillTitle;
  }

  double getSkillPercentDouble(int index) {
    return double.parse(_skills[index].skillPercnt);
  }

  Future<void> fetchAndSetSkills() async {
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as List;
      final List<SkillsModel> loadedData = [];
      extractedData.forEach((workData) {
        loadedData.add(
          SkillsModel(
              skillId: workData["skillId"],
              skillPercnt: workData["skillPercnt"],
              skillTitle: workData["skillTitle"],
              skillKey: workData["skillKey"]),
        );
      });

      _skills = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
