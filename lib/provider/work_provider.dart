import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';
import '../model/work_model.dart';


class WorkProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbWorkDataURL);

  List<WorkModel>? _works;

  List<WorkModel> get getWorks {
    return [..._works!];
  }

  Future<void> fetchAndSetWorks() async {
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as List;
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
      });

      _works = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
