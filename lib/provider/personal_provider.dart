import 'dart:convert' as json;

import 'package:dhana_resume/model/personal_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';

class PersonalProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.stackOverflowURL);

  PersonalModel? _personalData;

  PersonalModel? getAppData() {
    return _personalData;
  }

  Future<void> fetchAndSetPersonalData() async {
    try {
      final response =
          await http.get(url).timeout(Duration(seconds: Constants.timeoutSec));
      final extractedData = json.jsonDecode(response.body) as Map<String, dynamic>;
      PersonalModel loadedData;

      loadedData = PersonalModel(
        reps: extractedData["items"][0]["reputation"].toString(),
        bronze: extractedData["items"][0]["badge_counts"]["bronze"].toString(),
        silver: extractedData["items"][0]["badge_counts"]["silver"].toString(),
        gold: extractedData["items"][0]["badge_counts"]["gold"].toString(),
      );
      _personalData = loadedData;
      notifyListeners();
    } catch (error) {
      print('error $error');
      throw (error);
    }
  }
}
