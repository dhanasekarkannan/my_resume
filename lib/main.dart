import 'package:dhana_resume/provider/project_provider.dart';
import 'package:dhana_resume/provider/skills_provider.dart';
import 'package:dhana_resume/provider/work_provider.dart';
import 'package:dhana_resume/screen/appValidation_screen.dart';
import 'package:dhana_resume/screen/initial_screen.dart';
import './provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import './bloc/sidebar_navigation_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhana Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ValidationPage(),
    );
  }
}

class ValidationPage extends StatefulWidget {
  @override
  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isInit = true;

  bool _isLoading = true;

  int _versionValidation = 0;

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
        Provider.of<AppProvider>(context, listen: false)
            .fetchAndSetAppData()
            .then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SidebarNavigationBloc>(
        create: (context) => SidebarNavigationBloc(),
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.amber,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Consumer<AppProvider>(builder: (ctx, appProvider, _) {
                int key = appProvider.getVersionVaildation();
                print("Key value got : ${key}");
                return key != 0
                    ? AppValidationScreen(appProvider.getAppData())
                    : InitialScreen();
              }),
      ),
    );
  }
}
