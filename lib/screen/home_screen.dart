import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/circle_image_widget.dart';
import '../widget/home_welcome_widget.dart';


class HomeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(),
            HomeWelcomeWidget(),
            Spacer(),
            CircleImageWidget(),
          ],
        ),
      ),
    );
  }
}
