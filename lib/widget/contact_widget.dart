import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/utils.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      // margin: EdgeInsets.only(left: 30, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildIconCard(FontAwesomeIcons.facebookF),
          // SizedBox(
          //   width: 10.0,
          // ),
          _buildIconCard(FontAwesomeIcons.twitter),
          // SizedBox(
          //   width: 10.0,
          // ),
          _buildIconCard(FontAwesomeIcons.instagram),
          // SizedBox(
          //   width: 10.0,
          // ),
          _buildIconCard(FontAwesomeIcons.linkedinIn),
        ],
      ),
    );
  }

  Widget _buildIconCard(IconData icon) {
    return Container(
      height: 60.0,
      width: 60.0,
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 34.0,
        shadowColor: Colors.white70,
        child: MaterialButton(
          onPressed: () {
            _launchURL();
          },
          child: Icon(
            icon,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    // const url = 'https://flutter.dev//';
// const whatsappUrl ="whatsapp://send?phone=+9173458510012";
    const whatsappUrl =
        "mailto:smith@example.org?subject=News&body=New%20plugin";
    // const callUrl = "tel:+91 7358510012";
     const callUrl = UrlLinks.playStoreURL;
    const smsUrl = "sms:+91 7358510012";

    if (await canLaunch(callUrl)) {
      print( "launchURL called : $callUrl");
      await launch(callUrl);
    } else {
      throw 'Could not launch $callUrl';
    }
  }
}
