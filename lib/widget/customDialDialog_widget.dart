import 'package:dhana_resume/utils/textStrings.dart';
import 'package:dhana_resume/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDialDialogWidget extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomDialDialogWidget({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget _buildCustomIconButton(String title, IconData icon, String launchUrl) {
    return Expanded(
      child: Column(
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              Utils().launchURL(launchUrl);
            },
            elevation: 2.0,
            fillColor: Colors.teal,
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),

          // CircleAvatar(
          //   backgroundColor: Colors.teal,
          //   radius: Consts.avatarRadius - 10,
          //   child: IconButton(
          //     onPressed: () {
          //       Utils().launchURL(launchUrl);
          //     },
          //     icon: Icon(
          //       icon,
          //       color: Colors.white,
          //       size: 25,
          //     ),
          //   ),
          // ),
          Text(title),
        ],
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: Consts.avatarRadius + Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          margin: EdgeInsets.only(top: Consts.avatarRadius),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildCustomIconButton(TextStrings.call,
                      FontAwesomeIcons.phoneAlt, UrlLinks.callURL),
                  _buildCustomIconButton(TextStrings.whatsapp,
                      FontAwesomeIcons.whatsapp, UrlLinks.whatsappURL),
                  _buildCustomIconButton(TextStrings.message,
                      FontAwesomeIcons.comments, UrlLinks.messageURL),
                ],
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: Consts.padding,
          right: Consts.padding,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: Consts.avatarRadius,
            child: Icon(
              FontAwesomeIcons.mobileAlt,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 10.0;
  static const double avatarRadius = 40.0;
}
