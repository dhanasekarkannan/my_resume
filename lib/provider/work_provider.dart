import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';
import '../model/work_model.dart';

class WorkProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbWorkDataURL);

  List<WorkModel> _works = [];

  UnmodifiableListView<WorkModel> get getWorks => UnmodifiableListView(_works);

  Future<void> fetchAndSetWorks() async {
    try {
      if (getWorks.isEmpty) {
        final response = await http.get(url);
        final extractedData = jsonDecode(response.body) as List;
        final List<WorkModel> loadedData = [];
        extractedData.forEach((workData) {
          loadedData.add(WorkModel.fromJson(jsonEncode(workData))!);
        });

        _works = loadedData;
        notifyListeners();
      }
    } catch (error) {
      throw (error);
    }
  }
}
