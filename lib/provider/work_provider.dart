import 'dart:collection';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dhana_resume/helper/service_helper.dart';
import 'package:dhana_resume/model/resumeException_model.dart';
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';
import '../model/work_model.dart';

class WorkProvider with ChangeNotifier {
  static Uri url = Uri.parse(UrlLinks.fbWorkDataURL);
  ServiceHelper service = ServiceHelper();

  List<WorkModel> _works = [];

  UnmodifiableListView<WorkModel> get getWorks => UnmodifiableListView(_works);

  Future<void> fetchAndSetWorks() async {
    try {
      if (getWorks.isEmpty) {
        final String response = await service.getServiceRequest(url);
        final extractedData = jsonDecode(response) as List;
        final List<WorkModel> loadedData = [];
        extractedData.forEach((workData) {
          loadedData.add(WorkModel.fromJson(jsonEncode(workData))!);
        });

        _works = loadedData;
        notifyListeners();
      }
    }on DeserializationError {
      throw ResumeException(
          errorCode: "21", errorMessage: "Error in Deserializing Work Data ");
    } on ResumeException catch (e) {
      throw e;
    } catch (error) {
      throw ResumeException(
          errorCode: "21", errorMessage: "Error in fetching Work Data ");
    }
  }
}
