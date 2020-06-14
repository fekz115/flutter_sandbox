import 'package:NewSandbox/bloc/counter/counter_page.dart';
import 'package:NewSandbox/bloc/theme/theme_page.dart';
import 'package:NewSandbox/initial_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

@CustomAutoRouter(
    transitionsBuilder: zoomInTransition,
    durationInMilliseconds: 400
  )
class $Router {
  
  @initial
  InitialPage initialPage;
  CounterPage counterPage;
  ThemePage themePage;

}

Widget zoomInTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return ZoomPageTransitionsBuilder().buildTransitions(null, context, animation, secondaryAnimation, child);
}