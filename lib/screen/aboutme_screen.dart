import 'package:dhana_resume/utils/utils.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/timeLine_widget.dart';
import '../provider/work_provider.dart';
import '../utils/textStrings.dart';


class AboutMeScreen extends StatefulWidget with NavigationStates {
  final String routeName = 'AboutMeScreen';
  // final FirebaseAnalytics? analytics;
  // final FirebaseAnalyticsObserver? observer;
  // AboutMeScreen({required this.analytics, required this.observer});
  @override
  _AboutMeScreenState createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  var _isInit = true;
  var _isLoading = true;

  @override
  void initState() {
    // Utils().logScreen(widget.analytics, widget.routeName);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isInit = false;
      });
      if (_isLoading) {
        Provider.of<WorkProvider>(context).fetchAndSetWorks().then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: '${TextStrings.aboutMe}\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.amber)),
                    TextSpan(
                      text:
                          TextStrings.aboutMeMsg,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        _isLoading
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.amber,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : TimeLineWidget(
                workSet: Provider.of<WorkProvider>(context).getWorks),
      ],
    );
  }
}
