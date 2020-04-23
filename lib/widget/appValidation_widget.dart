import 'package:flutter/material.dart';

class AppValidationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: Text('Alert'),
        content: Text("Please update App"),
        actions: <Widget>[
          RaisedButton(child: Text('OK') , onPressed: (){},),
        ],
      ),
    );
  }
}
