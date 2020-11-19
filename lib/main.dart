import 'package:basicmvvm/app/routes.gr.dart' as a;
import 'package:flutter/material.dart' hide Router;
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/services.dart';

import 'app/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Basic MVVM',
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: a.Router().onGenerateRoute,
      initialRoute: a.Routes.splashScreen,
    );
  }
}
