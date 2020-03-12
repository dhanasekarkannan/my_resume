import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';

class PassionScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Passion",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

