import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinks {
  static const String profilePicURL =
      "https://firebasestorage.googleapis.com/v0/b/dhanasekar-resume.appspot.com/o/MyProfileImg.jpg?alt=media&token=667e3e98-11b6-408f-848f-a1c3d72a3df6";
  static const String firebaseURL = "https://dhanasekar-resume.firebaseio.com/";
  static const String playStoreURL =
      "https://play.google.com/store/apps/details?id=com.flutterProj.dhana_resume&hl=en_IN";
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
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
