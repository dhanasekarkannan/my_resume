import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './textStrings.dart';

class UrlLinks {
  static const String profilePicURL =
      "https://firebasestorage.googleapis.com/v0/b/dhanasekar-resume.appspot.com/o/MyProfileImg.jpg?alt=media&token=667e3e98-11b6-408f-848f-a1c3d72a3df6";
  static const String firebaseURL = "https://dhanasekar-resume.firebaseio.com/";
  static const String playStoreURL =
      "https://play.google.com/store/apps/details?id=com.flutterProj.dhana_resume&hl=en_IN";
  static const String linkedInURL =
      "https://www.linkedin.com/in/${TextStrings.linkedInId}/";
  static const String whatsappURL =
      "whatsapp://send?phone=${TextStrings.whatsappNo}";
  static final String messageURL = "sms:${TextStrings.mobileNo}";
  static final String callURL = "tel:${TextStrings.mobileNo}";
  static final String gitHubURL = "https://github.com/${TextStrings.githubId}";
  static final String emailURL =
      "mailto:${TextStrings.emailId}?subject=${TextStrings.emailSubject}&body=${TextStrings.emailBody}";
  static const String stackOverflowURL = "https://api.stackexchange.com/2.2/users/3726510?order=desc&sort=reputation&site=stackoverflow";
  static final String googleMapslocationURL =
      "https://www.google.com/maps/search/?api=1&query=${TextStrings.homeLat},${TextStrings.homeLng}";
  static const String fbAppDataURL = firebaseURL + "/AppData.json";
  static const String fbProjectDataURL = firebaseURL + "/ProjectData.json";
  static const String fbSkillDataURL = firebaseURL + "/SkillData.json";
  static const String fbWorkDataURL = firebaseURL + "/WorkData.json";
}

class Constants {
  static const int timeoutSec = 30;
}

class AppDetails {
  static const String androidVersion = '1.0.2';
}

class AppColors {
  static const primaryBlack = const Color(0xFF313544);
  static const primaryBlue = const Color(0xFF272F5F);
  static const secondaryColor = const Color(0xFFFF8C33);
}

class Fonts {
  static const primaryFont = "Quicksand";
}

class Utils {
  launchURL(url) async {
    final String encodedURl = Uri.encodeFull(url);
    if (await canLaunch(encodedURl)) {
      await launch(encodedURl);
    } else {
      throw 'Could not launch $url';
    }
  }
}
