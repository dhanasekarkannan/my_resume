import 'package:flutter/material.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/circle_image_widget.dart';
import '../widget/home_welcome_widget.dart';

class HomeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Spacer(),
        HomeWelcomeWidget(),
        Spacer(),
        CircleImageWidget(),
      ],
    );
  }
}
