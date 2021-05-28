import 'package:dhana_resume/model/appConfig_model.dart';
import 'package:dhana_resume/screen/initial_screen.dart';
import 'package:dhana_resume/utils/utils.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';

class AppValidationScreen extends StatefulWidget {
    final String routeName = '/AppValidationScreen';

  final FirebaseAnalytics? analytics;
  final FirebaseAnalyticsObserver? observer;
  final AppConfigModel appData;
  AppValidationScreen({required this.appData, required this.analytics, required this.observer});

  @override
  _AppValidationScreenState createState() => _AppValidationScreenState();
}

class _AppValidationScreenState extends State<AppValidationScreen> {

  @override
  void initState() {
    Utils().logScreen(widget.analytics, widget.routeName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // tileMode: TileMode.repeated,
            colors: [
              const Color(0xFF262AAA),
              const Color(0xFFE65258),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: 
                  Text(
                    widget.appData.updateMsg,
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: widget.appData.priority == "2"
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.center,
                children: <Widget>[
                  widget.appData.priority == "2"
                      ? ElevatedButton(
                          child: Text("Remind Later"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InitialScreen(),
                              ),
                            );
                          },
                        )
                      : Container(),
                  ElevatedButton(
                    child: Text("Update Now"),
                    onPressed: () {
                      Utils().launchURL(UrlLinks.playStoreURL);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
