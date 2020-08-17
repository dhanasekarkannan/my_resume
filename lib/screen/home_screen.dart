import 'package:dhana_resume/provider/personal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/circle_image_widget.dart';
import '../widget/home_welcome_widget.dart';

class HomeScreen extends StatefulWidget with NavigationStates {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isInit = true;
  var _isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isInit = false;
      });
      if (_isLoading) {
        Provider.of<PersonalProvider>(context)
            .fetchAndSetPersonalData()
            .then((_) {
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
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.amber,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              Consumer<PersonalProvider>(
                builder: (_, personal, child) {
                  return HomeWelcomeWidget(personal);
                },
              ),
              Spacer(),
              CircleImageWidget(),
            ],
          );
  }
}
