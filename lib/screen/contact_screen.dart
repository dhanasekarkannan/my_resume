import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';
import '../utils/textStrings.dart';
import '../widget/googleMaps_widget.dart';

class ContactScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return 
    // ListView(children: <Widget>[
      // Container(
      //   height: MediaQuery.of(context).size.height * 30 / 100,
      //   color: Colors.blue,
      //   child: GoogleMapsWidget(),
      // ),
      Center(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(30),
          // padding: const EdgeInsets.only(top: 50.0),
          child: ListView(
          //   children: <Widget>[
          //     Text(TextStrings.contactMe),
          //     SizedBox(
          //       height: 30.0,
          //     ),
              // Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildIconCard(FontAwesomeIcons.facebookF),
                      
                      Text("Facebook")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildIconCard(FontAwesomeIcons.instagram),
                      
                      Text("Facebook")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildIconCard(FontAwesomeIcons.twitter),
                      
                      Text("Facebook")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildIconCard(FontAwesomeIcons.linkedinIn),
                      
                      Text("Facebook")
                    ],
                  ),
                  
                  
              //   ],
              // )
            ],
          ),
        ),
      );
    // ]);
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
    const smsUrl = "sms:+91 7358510012";
    const callUrl = UrlLinks.playStoreURL;

    if (await canLaunch(callUrl)) {
      await launch(callUrl);
    } else {
      throw 'Could not launch $callUrl';
    }
  }
}
