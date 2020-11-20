// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:basicmvvm/screen/login.dart';
import 'package:basicmvvm/screen/splashscreen.dart';
import 'package:basicmvvm/screen/home.dart';
import 'package:basicmvvm/models/userModel.dart';

abstract class Routes {
  static const login = '/';
  static const splashScreen = '/splash-screen';
  static const home = '/home';
  static const all = {
    login,
    splashScreen,
    home,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Login(),
          settings: settings,
        );
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.home:
        if (hasInvalidArgs<HomeArguments>(args)) {
          return misTypedArgsRoute<HomeArguments>(args);
        }
        final typedArgs = args as HomeArguments ?? HomeArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => Home(user: typedArgs.user),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//Home arguments holder class
class HomeArguments {
  final UserModel user;
  HomeArguments({this.user});
}
