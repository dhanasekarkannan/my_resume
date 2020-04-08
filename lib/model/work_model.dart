import 'package:flutter/foundation.dart';

class WorkModel {
  final String workId;
  final String workName;
  final String workDesg;
  final String workStart;
  final String workEnd;
  final String workLoc;
  final String workLogoUrl;

  WorkModel({
    @required this.workId,
    @required this.workName,
    @required this.workDesg,
    @required this.workStart,
    @required this.workEnd,
    @required this.workLoc,
    this.workLogoUrl =
        'https://media-exp1.licdn.com/dms/image/C4E0BAQEe2Z_nU4IpEA/company-logo_200_200/0?e=1593648000&v=beta&t=94BlohLfLJPvAD3iGDW54N273nY5Vpqu0ZjdztU5kJI',
  });
}
