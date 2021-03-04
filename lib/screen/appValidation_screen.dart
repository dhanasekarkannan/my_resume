import 'package:dhana_resume/model/app_model.dart';
import 'package:dhana_resume/screen/initial_screen.dart';
import 'package:dhana_resume/utils/utils.dart';
import 'package:flutter/material.dart';

class AppValidationScreen extends StatelessWidget {
  final AppModel _appData;
  AppValidationScreen(this._appData);
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
                    _appData.updateMsg,
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: _appData.priority == "2"
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.center,
                children: <Widget>[
                  _appData.priority == "2"
                      ? RaisedButton(
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
                  RaisedButton(
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
