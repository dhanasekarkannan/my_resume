import 'package:dhana_resume/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:dhana_resume/model/work_model.dart';

class TimeLineWidget extends StatelessWidget {
  final List<WorkModel> workSet;

  TimeLineWidget({required this.workSet});

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
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      title: Text(
                        workSet[index].workName!,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      trailing: Image.network(
                        workSet[index].workLogoUrl!,
                        semanticLabel: workSet[index].workName,
                        fit: BoxFit.contain,
                        height: 100,
                        width: 50,
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: workSet[index].workDesg! + '\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                            TextSpan(
                              text: workSet[index].workStart! +
                                  ' - ' +
                                  workSet[index].workEnd!,
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
            index == workSet.length - 1
                ? Positioned(
                    top: 0.0,
                    left: 31.0,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      height: 10,
                      width: 10,
                      // color: Colors.white,
                    ),
                  )
                : Container(),
            Positioned(
              top: 60.0,
              left: 26.0,
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
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
