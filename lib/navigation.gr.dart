// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:NewSandbox/initial_page.dart';
import 'package:NewSandbox/bloc/counter/counter_page.dart';
import 'package:NewSandbox/bloc/theme/theme_page.dart';

abstract class Routes {
  static const initialPage = '/';
  static const counterPage = '/counter-page';
  static const themePage = '/theme-page';
  static const all = {
    initialPage,
    counterPage,
    themePage,
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
      case Routes.initialPage:
        if (hasInvalidArgs<InitialPageArguments>(args)) {
          return misTypedArgsRoute<InitialPageArguments>(args);
        }
        final typedArgs =
            args as InitialPageArguments ?? InitialPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              InitialPage(key: typedArgs.key, title: typedArgs.title),
          settings: settings,
        );
      case Routes.counterPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => CounterPage(),
          settings: settings,
        );
      case Routes.themePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ThemePage(),
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

//InitialPage arguments holder class
class InitialPageArguments {
  final Key key;
  final String title;
  InitialPageArguments({this.key, this.title = "Flutter Sandbox"});
}
