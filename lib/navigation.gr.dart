// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:NewSandbox/initial_page.dart';
import 'package:NewSandbox/navigation.dart';
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
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              InitialPage(key: typedArgs.key, title: typedArgs.title),
          settings: settings,
          transitionsBuilder: zoomInTransition,
          transitionDuration: const Duration(milliseconds: 400),
        );
      case Routes.counterPage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              CounterPage(),
          settings: settings,
          transitionsBuilder: zoomInTransition,
          transitionDuration: const Duration(milliseconds: 400),
        );
      case Routes.themePage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) => ThemePage(),
          settings: settings,
          transitionsBuilder: zoomInTransition,
          transitionDuration: const Duration(milliseconds: 400),
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
