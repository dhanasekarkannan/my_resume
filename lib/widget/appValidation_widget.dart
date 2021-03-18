import 'package:flutter/material.dart';

class AppValidationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: Text('Alert'),
        content: Text("Please update App"),
        actions: <Widget>[
          ElevatedButton(child: Text('OK') , onPressed: (){},),
        ],
      ),
    );
  }
}
