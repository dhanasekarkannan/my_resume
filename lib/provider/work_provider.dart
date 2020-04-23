import 'dart:convert';

import 'package:dhana_resume/model/work_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';

class WorkProvider with ChangeNotifier {
  static const url = UrlLinks.firebaseURL + "/WorkData.json";

  List<WorkModel> _works;

  List<WorkModel> get getWorks {
    return [..._works];
  }

  Future<void> fetchAndSetWorks() async {
    try {
      final response = await http.get(url);
      print(jsonDecode(response.body));
      final extractedData = jsonDecode(response.body) as List;
      // Map<String, WorkModel>.from(json.decode(response.body) as Map<String,dynamic>);
      final List<WorkModel> loadedData = [];
      extractedData.forEach((workData) {
        loadedData.add(
          WorkModel(
              workId: workData["workId"],
              workName: workData["workName"],
              workDesg: workData["workDesg"],
              workStart: workData["workStart"],
              workEnd: workData["workEnd"],
              workLoc: workData["workLoc"],
              workLogoUrl: workData["workLogoUrl"]),
        );
      } );
      
      _works = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
