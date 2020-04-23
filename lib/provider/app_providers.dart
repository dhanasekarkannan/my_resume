import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../model/app_model.dart';
import '../utils/utils.dart';

class AppProvider with ChangeNotifier {
  static const url = UrlLinks.firebaseURL + "/AppData.json";

  List<AppModel> _appData;

  List<AppModel> get getAppData {
    return [..._appData];
  }

  Future<void> fetchAndSetAppData() async {
    try {
      final response = await http.get(url);
      print(jsonDecode(response.body));
      final extractedData = jsonDecode(response.body) as Map<String, dynamic>;
      final List<AppModel> loadedData = [];
      extractedData.forEach((appPlatform, appData) {
        loadedData.add(
          AppModel(
              appPlatform: appPlatform,
              appURL: appData["appURL"],
              version: appData["version"],
              priority: appData["priority"],
              updateMsg: appData["updateMsg"]),
        );
      } );
      
      _appData = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
