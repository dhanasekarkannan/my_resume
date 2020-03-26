import '../bloc/sidebar_navigation_bloc.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "About Me",
        style: TextStyle(
          fontSize: 40,
          color : Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
