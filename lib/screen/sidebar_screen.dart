import 'dart:async';

import '../utils/textStrings.dart';
import '../bloc/sidebar_navigation_bloc.dart';
import '../utils/utils.dart';
import '../widget/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class SidebarScreen extends StatefulWidget {
  @override
  _SidebarScreenState createState() => _SidebarScreenState();
}

class _SidebarScreenState extends State<SidebarScreen>
    with SingleTickerProviderStateMixin<SidebarScreen> {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool>? isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  void onIconPressed() {
    final animatedStatus = _animationController.status;
    final isAnimationCompleted = animatedStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
        initialData: false,
        stream: isSidebarOpenedStream,
        builder: (context, isSidebarOpenedAsync) {
          return AnimatedPositioned(
            duration: _animationDuration,
            top: 0,
            bottom: 0,
            left: isSidebarOpenedAsync.data! ? 0 : -screenWidth,
            right: isSidebarOpenedAsync.data! ? 0 : screenWidth - 45,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        // color: const Color(0xFF262AAA),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 100),
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
                                  child: Icon(Icons.perm_identity)
                                  // Image.network(
                                  // "https://pbs.twimg.com/profile_images/1025219653084172288/IB6sMLR__400x400.jpg",
                                  // ),
                                  ),
                              title: Text(
                                TextStrings.name,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF262AAA)),
                              ),
                              subtitle: Text(
                                TextStrings.emailId,
                                style:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                              ),
                              onTap: (){
                                Utils().launchURL(UrlLinks.emailURL);
                              },
                            ),
                            Divider(
                              height: 3,
                              color: Colors.transparent,
                            ),
                            MenuWidget(
                              title: TextStrings.home,
                              icon: Icons.home,
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<SidebarNavigationBloc>(context)
                                    .add(NavigationEvents.HomeClickedEvent);
                              },
                            ),
                            Divider(
                              height: 3,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            MenuWidget(
                              title: TextStrings.aboutMe,
                              icon: Icons.perm_contact_calendar,
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<SidebarNavigationBloc>(context)
                                    .add(NavigationEvents.AboutMeClickedEvent);
                              },
                            ),
                            Divider(
                              height: 3,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            MenuWidget(
                              title: TextStrings.work,
                              icon: Icons.laptop_windows,
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<SidebarNavigationBloc>(context)
                                    .add(NavigationEvents.WorkClickedEvent);
                              },
                            ),
                            Divider(
                              height: 3,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.blue.withOpacity(0.5),
                            ),
                            // MenuWidget(
                            //   title: "Skills",
                            //   icon: Icons.laptop_windows,
                            //   onTap: () {
                            //     onIconPressed();
                            //     BlocProvider.of<SidebarNavigationBloc>(context)
                            //         .add(NavigationEvents.SkillsClickedEvent);
                            //   },
                            // ),
                            // Divider(
                            //   height: 3,
                            //   indent: 20,
                            //   endIndent: 20,
                            //   color: Colors.blue.withOpacity(0.5),
                            // ),
                            // MenuWidget(
                            //   title: "Passion",
                            //   icon: Icons.laptop_windows,
                            //   onTap: () {
                            //     onIconPressed();
                            //     BlocProvider.of<SidebarNavigationBloc>(context)
                            //         .add(NavigationEvents.PassionClickedEvent);
                            //   },
                            // ),
                            // Divider(
                            //   height: 3,
                            //   indent: 20,
                            //   endIndent: 20,
                            //   color: Colors.blue.withOpacity(0.5),
                            // ),
                            MenuWidget(
                              title: TextStrings.contactMe,
                              icon: Icons.contact_phone,
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<SidebarNavigationBloc>(context)
                                    .add(NavigationEvents.ContactClickedEvent);
                              },
                            ),
                          ],
                        ))),
                Align(
                  alignment: Alignment(0, -0.8),
                  child: GestureDetector(
                    onTap: () {
                      onIconPressed();
                    },
                    child: ClipPath(
                      clipper: CustomMenuClipper(),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          width: 35,
                          height: 100,
                          color: Colors.white,
                          child: AnimatedIcon(
                              color: const Color(0xFF262AAA),
                              icon: AnimatedIcons.menu_arrow,
                              progress: _animationController.view)),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
