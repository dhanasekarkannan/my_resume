import 'package:flutter/material.dart';



class HomeWelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(10),
              // height: 200,
              alignment: Alignment.bottomCenter,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: "I'm ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    TextSpan(
                        text: 'Dhanasekar\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.amber)),
                    TextSpan(
                      text: 'A freelance App Developer 5+ years Experience',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}