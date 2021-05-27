import 'dart:convert';

import 'package:dhana_resume/model/appConfig_model.dart';
import 'package:dhana_resume/model/resumeException_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:package_info/package_info.dart';
import '../helper/service_helper.dart';

import '../model/app_model.dart';
import '../utils/utils.dart';
import 'dart:io' show HttpException, Platform, SocketException;

class AppProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbAppDataURL);
  ServiceHelper service = ServiceHelper();
  AppModel? _appData;
  AppModel? get getAppListData => _appData;

  AppConfigModel getAppData() {
    try {
      if (Platform.isAndroid) {
        return getAppListData!.android;
      } else {
        return getAppListData!.android;

        // return getAppListData.ios;
      }
    } catch (e) {
      return getAppListData!.android;
    }
  }

  Future<PackageInfo> _getPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    return info;
  }

  Future<int> getVersionVaildation() async {
    int key = 0;
    try {
      if (Platform.isAndroid) {
        final appData = getAppListData!.android;
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
      String response = await service.getServiceRequest(url);

      final AppModel? appModel = AppModel.fromJson(response);
      _appData = appModel as AppModel;
      notifyListeners();
    } on ResumeException catch (e) {
      throw e;
    } catch (e) {
      throw ResumeException(
          errorCode: "21", errorMessage: "Error in fetching Application Data ");
    }
  }
}
