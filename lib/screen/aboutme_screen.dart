import '../bloc/sidebar_navigation_bloc.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AboutMeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      children: <Widget>[
        Center(
          child: Container(
            //  color: Colors.green,
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'About Me\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.amber)),
                  TextSpan(
                    text:
                        'We make payments simple, secure and reliable. Add Secure Payment Acceptance into your application. Everything a business needs to manage and secure transactions.',
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
        // Divider(thickness: 1,color: Colors.white,),

        TimeLineWidget(),
      ],
    );
  }
}

class TimeLineWidget extends StatelessWidget {
  var workSet = WorkSample.workset;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                height: 100,
                margin: EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white70,
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      title: Text(
                        workSet[index]['workName'],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      trailing: Image.network(
                        workSet[index]['workLogo'],
                        semanticLabel: workSet[index]['workName'],
                        fit: BoxFit.contain,
                        height: 100,
                        width: 50,
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: workSet[index]['workDesg'] + '\n', 
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                            TextSpan(
                              text: 
                                  workSet[index]['workStart'] +
                                  ' - ' +
                                  workSet[index]['workEnd'],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
            index == workSet.length -1 ? Positioned(
              top: 0.0,
              left: 31.0,
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                height: 10,
                width: 10,
                // color: Colors.white,
              ),
            ) : Container(),
            Positioned(
              top: 60.0,
              left: 26.0,
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                height: 20,
                width: 20,
                // color: Colors.white,
              ),
            )
          ],
        );
      },
      itemCount: workSet.length,
    );
  }
}
