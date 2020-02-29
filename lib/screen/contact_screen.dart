import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';
import '../widget/googleMaps_widget.dart';

class ContactScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: <Widget>[
           Container(
            height: MediaQuery.of(context).size.height * 30 / 100,
            color: Colors.blue,
            child: GoogleMapsWidget(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                Text(Texts.contactMe),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildIconCard(FontAwesomeIcons.facebookF),
                    SizedBox(
                      width: 10.0,
                    ),
                    _buildIconCard(FontAwesomeIcons.twitter),
                    SizedBox(
                      width: 10.0,
                    ),
                    _buildIconCard(FontAwesomeIcons.instagram),
                    SizedBox(
                      width: 10.0,
                    ),
                    _buildIconCard(FontAwesomeIcons.linkedinIn),
                  ],
                )
              ],
            ),
          ),
        ]),
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
    const callUrl = "tel:+91 7358510012";
    const smsUrl = "sms:+91 7358510012";

    if (await canLaunch(callUrl)) {
      await launch(callUrl);
    } else {
      throw 'Could not launch $callUrl';
    }
  }
}
