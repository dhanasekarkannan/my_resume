import 'package:dhana_resume/provider/skills_provider.dart';
import 'package:dhana_resume/provider/work_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import './bloc/sidebar_navigation_bloc.dart';
import './screen/sidebar_screen.dart';
import './widget/appValidation_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WorkProvider()),
        ChangeNotifierProvider(create: (_) => SkillsProvider()),
      ],
      child: MaterialApp(
        title: 'Dhana Resume',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final bool validation = true;
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
              child: BlocBuilder<SidebarNavigationBloc, NavigationStates>(
                  builder: (context, navigationState) {
                return navigationState as Widget;
              }),
            ),
            SidebarScreen(),
            //validation ? AppValidationWidget() : SidebarScreen(),
          ],
        ),
      ),
    );
  }
}
