import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../model/app_model.dart';
import '../utils/utils.dart';
import 'dart:io' show Platform;

class AppProvider with ChangeNotifier {
  static const url = UrlLinks.firebaseURL + "/AppData.json";

  List<AppModel> _appData;

  List<AppModel> getAppListData() {
    return _appData;
  }

  AppModel getAppData(){
     if (Platform.isAndroid) {
        AppModel data =  getAppListData().singleWhere((data) => data.appPlatform == 'android' );
        print( "Appdata : $data" );
        return getAppListData().singleWhere((data) => data.appPlatform == 'android' );
      }else{
        return getAppListData().singleWhere((data) => data.appPlatform == 'iOS' );
      }
  }

  int getVersionVaildation() {
    int key = 0;
    print(Platform.isAndroid);
    if (Platform.isAndroid) {
      print("getAppData");
      print(getAppData());
      getAppListData().forEach((data) {
        if (data.appPlatform == 'android') {
          if (data.version != AppDetails.androidVersion) {
            key = int.parse(data.priority);
          }
        }
      });
    }
    return key;
  }

  Future<void> fetchAndSetAppData() async {
    try {
      final response = await http.get(url);
      print(jsonDecode(response.body));
      final extractedData = jsonDecode(response.body) as Map<String, dynamic>;
      final List<AppModel> loadedData = [];
      print(jsonDecode(response.body));
      extractedData.forEach((appPlatform, appData) {
        loadedData.add(
          AppModel(
              appPlatform: appPlatform,
              appURL: appData["appURL"],
              version: appData["version"],
              priority: appData["priority"],
              updateMsg: appData["updateMsg"]),
        );
      });

      _appData = loadedData;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
