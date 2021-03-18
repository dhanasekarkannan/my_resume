import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:package_info/package_info.dart';

import '../model/app_model.dart';
import '../utils/utils.dart';
import 'dart:io' show Platform;

class AppProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbAppDataURL);

  UnmodifiableListView<AppModel> _appData;

  List<AppModel> getAppListData() {
    return _appData;
  }

  AppModel getAppData() {
    try {
      if (Platform.isAndroid) {
        return getAppListData()
            .singleWhere((data) => data.appPlatform == 'android');
      } else {
        return getAppListData()
            .singleWhere((data) => data.appPlatform == 'iOS');
      }
    } catch (e) {
      return getAppListData()
          .singleWhere((data) => data.appPlatform == 'android');
    }
  }

  Future<PackageInfo> _getPackageInfo() async {
    print("bfr package info ");
    final PackageInfo info = await PackageInfo.fromPlatform();
    print("after package info");

    return info;
  }

  Future<int> getVersionVaildation() async {
    print("web test inside");

    int key = 0;
    try {
      print("web test inside");
      if (Platform.isAndroid) {
        print("web test inside");

        final appData = getAppListData()
            .singleWhere((data) => data.appPlatform == 'android');
        PackageInfo _packageInfo = await _getPackageInfo();
        print("App version from server: ${appData.version}");
        print("Package version from server: ${_packageInfo.version}");
        if (appData.version != _packageInfo.version) {
          key = int.parse(appData.priority);
        }
      }
    } catch (e) {
      return key;
    }
    return key;
  }

  Future<void> fetchAndSetAppData() async {
    try {
      if (_appData.isEmpty) {
        final response = await http
            .get(url)
            .timeout(Duration(seconds: Constants.timeoutSec));
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
        });

        _appData = loadedData;
        notifyListeners();
      }
    } catch (error) {
      print('error $error');
      throw (error);
    }
  }
}
