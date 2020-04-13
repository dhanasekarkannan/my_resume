import 'dart:convert';

import 'package:dhana_resume/model/work_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';

class WorkProvider with ChangeNotifier {
  static const url = UrlLinks.firebaseURL + "/WorkData.json";

  List<WorkModel> _works = [
    WorkModel(
      workId: "1",
      workName: "Acumen Innovations",
      workDesg: "Software Engineer",
      workStart: "Mar 2016",
      workEnd: "Dec 2017",
      workLoc: "Bangalore, Kenya, Dubai",
      workLogoUrl:
          "https://media-exp1.licdn.com/dms/image/C4E0BAQEe2Z_nU4IpEA/company-logo_200_200/0?e=1593648000&v=beta&t=94BlohLfLJPvAD3iGDW54N273nY5Vpqu0ZjdztU5kJI",
    ),
    WorkModel(
      workId: "2",
      workName: "Freelancer",
      workDesg: "Software Developer",
      workStart: "Jan 2018",
      workEnd: "Dec 2018",
      workLoc: "Chennai",
      workLogoUrl:
          'https://media-exp1.licdn.com/dms/image/C560BAQEJe-MEhPTm7w/company-logo_200_200/0?e=1593648000&v=beta&t=jwaVT0BDqUIqSjf_zMz-Vbps7sRkDqxLwxQl8MIlPUA',
    ),
    WorkModel(
      workId: "3",
      workName: "Virtusa Consulting",
      workDesg: "Associate Consultant",
      workStart: "Dec 2018",
      workEnd: "Present",
      workLoc: "Hyderabad",
      workLogoUrl:
          'https://media-exp1.licdn.com/dms/image/C4E0BAQEe2Z_nU4IpEA/company-logo_200_200/0?e=1593648000&v=beta&t=94BlohLfLJPvAD3iGDW54N273nY5Vpqu0ZjdztU5kJI',
    )
  ];

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
