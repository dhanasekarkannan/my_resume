import 'package:flutter/foundation.dart';

class ProjectData {
  final String projId;
  final String projName;
  final String projClient;
  final String projUrl;
  final String projImgUrl;
  final String projDesc;

  ProjectData({
    @required this.projId,
    @required this.projName,
    @required this.projClient,
    @required this.projDesc,
    this.projUrl =
        'https://media-exp1.licdn.com/dms/image/C4E0BAQEe2Z_nU4IpEA/company-logo_200_200/0?e=1593648000&v=beta&t=94BlohLfLJPvAD3iGDW54N273nY5Vpqu0ZjdztU5kJI',
    this.projImgUrl =
        'https://media-exp1.licdn.com/dms/image/C4E0BAQEe2Z_nU4IpEA/company-logo_200_200/0?e=1593648000&v=beta&t=94BlohLfLJPvAD3iGDW54N273nY5Vpqu0ZjdztU5kJI',
  });
}
