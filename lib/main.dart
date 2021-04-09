import 'package:dhana_resume/screen/appValidation_screen.dart';
import 'package:dhana_resume/screen/initial_screen.dart';
import 'package:dhana_resume/utils/utils.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/sidebar_navigation_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhana Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: <NavigatorObserver>[observer],
      home: ValidationPage(
        analytics: analytics,
        observer: observer,
      ),
    );
  }
}

class ValidationPage extends StatefulWidget {
  final FirebaseAnalytics? analytics;
  final FirebaseAnalyticsObserver? observer;

  const ValidationPage({Key? key, this.analytics, this.observer})
      : super(key: key);
  @override
  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  @override
  void initState()  {
    Utils().logScreen(widget.analytics, "Validation Page");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyHomePage( analytics: widget.analytics, observer: widget.observer, ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final FirebaseAnalytics? analytics;
  final FirebaseAnalyticsObserver? observer;

  MyHomePage({required this.analytics, required this.observer});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isInit = true;

  bool _isLoading = true;

  @override
  void initState(){
    Utils().logScreen(widget.analytics, "My Home Page");
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
        }).catchError((e) {
          _showAlert(context, e);
        });
      }
    }
    super.didChangeDependencies();
  }

  void _showAlert(BuildContext context, dynamic description) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: Text("Alert"),
              content: Text("$description"),
            ));
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
                return FutureBuilder<int>(
                    future: appProvider.getVersionVaildation(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return Center(
                          child: CircularProgressIndicator(
                            semanticsValue: "Hey!! fellas!!",
                            backgroundColor: Colors.amber,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        );
                      }

                      return snapshot.data != 0
                          ? AppValidationScreen(appData: appProvider.getAppData(), analytics: widget.analytics, observer: widget.observer,)
                          : InitialScreen();
                      // ...
                    });
              }),
      ),
    );
  }
}
