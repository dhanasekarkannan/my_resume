import '../bloc/sidebar_navigation_bloc.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return 
    ListView(
      primary: true,
      children: <Widget>[
        Container(
          color: Colors.orange,
          // width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "About Me",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          // width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "About Me 2",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(child: TimeLineWidget()),
      ],
    );
  }
}

class TimeLineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Card(
                margin: EdgeInsets.all(20.0),
                child: Card(
                  color: Colors.white,
                  child: Container(
                      height: 100,
                      child: ListTile(
                        title: Text('good morning'),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 35.0,
              child: Container(
                height: double.infinity,
                width: 2.0,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 70.0,
              left: 20.0,
              child: Container(
                child: Text(
                  '2012',
                ),
                color: Colors.white,
              ),
            )
          ],
        );
      },
      itemCount: 5,
    );
  }
}
