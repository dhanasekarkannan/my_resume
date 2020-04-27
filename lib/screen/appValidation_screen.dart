import 'package:dhana_resume/model/app_model.dart';
import 'package:dhana_resume/screen/initial_screen.dart';
import 'package:flutter/material.dart';

class AppValidationScreen extends StatelessWidget {
  final AppModel _appData;
  AppValidationScreen(this._appData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.repeated,
            colors: [
              const Color(0xFF262AAA),
              const Color(0xFFE65258),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                  "How are tyih sfajkbfhjaghkfgkajg  hhksdgfhkagkj fas kjahsdfkja kjh f"),
            ),
            RaisedButton(
              child: Text("Remind Later"),
              onPressed: () {
                Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => InitialScreen()),
    );
 
              },
            ),
            RaisedButton(
              child: Text("Update Now"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
