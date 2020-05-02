import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './textStrings.dart';

class UrlLinks {
  static const String profilePicURL =
      "https://firebasestorage.googleapis.com/v0/b/dhanasekar-resume.appspot.com/o/MyProfileImg.jpg?alt=media&token=667e3e98-11b6-408f-848f-a1c3d72a3df6";
  static const String firebaseURL = "https://dhanasekar-resume.firebaseio.com/";
  static const String playStoreURL =
      "https://play.google.com/store/apps/details?id=com.flutterProj.dhana_resume&hl=en_IN";
  static const String linkedInURL = "https://www.linkedin.com/in/dhanasekar/";
  static const String whatsappURL = "whatsapp://send?phone=+917358510012";
  static const String messageURL = "sms:+91 7358510012";
  static const String callURL = "tel:+91 7358510012";
  static const String gitHubURL = "https://github.com/dhanasekarkannan";
  static const String emailURL =
      "mailto:sendmailtodhana@gmail.com?subject=dhanasapp&body=Hi%Dhana";
  static const String stackOverflowURL = "";
  static final String googleMapslocationUrl =
  "https://www.google.com/maps/search/?api=1&center=${TextStrings.homeLat},${TextStrings.homeLng}";

      // "comgooglemaps://?center=${TextStrings.homeLat},${TextStrings.homeLng}";
}

class AppDetails {
  static const String androidVersion = '1.0.1';
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
      print('Could not launch $url');
      throw 'Could not launch $url';
    }
  }
}
