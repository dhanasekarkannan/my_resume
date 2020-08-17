import 'package:dhana_resume/provider/personal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../bloc/sidebar_navigation_bloc.dart';
import '../screen/sidebar_screen.dart';
import '../provider/project_provider.dart';
import '../provider/skills_provider.dart';
import '../provider/work_provider.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PersonalProvider()),
        ChangeNotifierProvider(create: (_) => WorkProvider()),
        ChangeNotifierProvider(create: (_) => SkillsProvider()),
        ChangeNotifierProvider(create: (_) => ProjectProvider()),
      ],
      child: Scaffold(
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
              ],
            )),
      ),
    );
  }
}
