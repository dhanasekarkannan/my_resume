import 'package:dhana_resume/provider/personal_provider.dart';
import 'package:dhana_resume/utils/textStrings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeWelcomeWidget extends StatelessWidget {
  final PersonalProvider personalStack;

  const HomeWelcomeWidget(this.personalStack);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // height: 200,
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          RichText(
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
                    text: '${TextStrings.name}\n',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.amber)),
                TextSpan(
                  text: TextStrings.welcomeMsg,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                WidgetSpan(
                  child: Icon(
                    FontAwesomeIcons.stackOverflow,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
                TextSpan(
                  text: " ${personalStack.getAppData()!.reps}  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[350],
                  ),
                ),
                int.parse(personalStack.getAppData()!.gold) > 0
                    ? WidgetSpan(
                        child: Icon(
                          FontAwesomeIcons.solidCircle,
                          size: 10,
                          color: Colors.amber,
                        ),
                      )
                    : TextSpan(),
                int.parse(personalStack.getAppData()!.gold) > 0
                    ? TextSpan(
                        text: " ${personalStack.getAppData()!.gold}   ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.deepOrangeAccent,
                        ),
                      )
                    : TextSpan(),
                WidgetSpan(
                  child: Icon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.grey[350],
                    size: 10,
                  ),
                ),
                TextSpan(
                  text: " ${personalStack.getAppData()!.silver}   ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[350],
                  ),
                ),
                WidgetSpan(
                  child: Icon(
                    FontAwesomeIcons.solidCircle,
                    size: 10,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                TextSpan(
                  text: " ${personalStack.getAppData()!.bronze} ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
