import 'package:NewSandbox/bloc/counter/counter_page.dart';
import 'package:NewSandbox/bloc/theme/theme_page.dart';
import 'package:NewSandbox/initial_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter()
class $Router {
  
  @initial
  InitialPage initialPage;
  CounterPage counterPage;
  ThemePage themePage;

}