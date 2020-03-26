import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dhana_resume/bloc/sidebar_navigation_bloc.dart';

import './screen/sidebar_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhana Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SidebarNavigationBloc>(
        create: (context) => SidebarNavigationBloc(),
        child: Stack(
          children: <Widget>[
            Container(
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
        child :BlocBuilder<SidebarNavigationBloc, NavigationStates>(
                builder: (context, navigationState) {
              return navigationState as Widget;
            }),
            ),
            SidebarScreen(),
          ],
        ),
      ),
    );
  }
}
