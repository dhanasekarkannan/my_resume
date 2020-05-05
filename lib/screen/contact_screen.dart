import 'package:dhana_resume/utils/textStrings.dart';
import 'package:dhana_resume/widget/customDialDialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';

class ContactScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'Contact Me\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.amber)),
                  TextSpan(
                    text: "You can connect with me through below links \n\n",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            _buildIconCard(
              context,
              FontAwesomeIcons.mapMarkerAlt,
              TextStrings.location,
              UrlLinks.googleMapslocationUrl,
            ),
            SizedBox(height: 10),
            _buildIconCard(
              context,
              FontAwesomeIcons.phoneAlt,
              TextStrings.mobileNo,
              UrlLinks.callURL,
            ),
            SizedBox(height: 10),
            _buildIconCard(
              context,
              FontAwesomeIcons.envelopeOpen,
              TextStrings.emailId,
              UrlLinks.emailURL,
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.amber,
            ),
            SizedBox(height: 10),
            _buildIconCard(
              context,
              FontAwesomeIcons.github,
              TextStrings.githubId,
              UrlLinks.gitHubURL,
            ),
            SizedBox(height: 10),
            _buildIconCard(
              context,
              FontAwesomeIcons.linkedin,
              TextStrings.linkedInId,
              UrlLinks.linkedInURL,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildIconCard(
      BuildContext context, IconData icon, String title, String launchURL) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 10.0,
          shadowColor: Colors.white60,
          child: Icon(
            icon,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      onTap: () {
        if (title == TextStrings.mobileNo) {
          print("Custom Dialog called");
          showDialog(
            context: context,
            builder: (BuildContext context) => CustomDialDialogWidget(
              title: "Contact",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              buttonText: "Cancel",
            ),
          );
        } else {
          Utils().launchURL(launchURL);
        }
      },
    );
  }
}
