import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../widget/timeLine_widget.dart';
import '../provider/work_provider.dart';

class AboutMeScreen extends StatefulWidget with NavigationStates {
  @override
  _AboutMeScreenState createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
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
        Provider.of<WorkProvider>(context).fetchAndSetWorks().then((_) {
          _isLoading = false;
        });
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'About Me\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.amber)),
                    TextSpan(
                      text:
                          "In my quest for growth I enjoy grabbing opportunities to explore and collaborate with people across the globe. I'm passionate about my work and I’m always interested in hearing from interesting creative folk. ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        _isLoading
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.amber,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : TimeLineWidget(
                workSet: Provider.of<WorkProvider>(context).getWorks),
      ],
    );
  }
}
