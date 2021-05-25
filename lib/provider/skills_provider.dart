import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/skills_model.dart';
import '../utils/utils.dart';

class SkillsProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbSkillDataURL);

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
        final response = await http.get(url);
        final extractedData = jsonDecode(response.body) as List;
        final List<SkillsModel> loadedData = [];
        extractedData.forEach((skillData) {
          loadedData.add(SkillsModel.fromJson(jsonEncode(skillData))!);
        });

        _skills = loadedData;
        notifyListeners();
      }
    } catch (error) {
      throw (error);
    }
  }
}
