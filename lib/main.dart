import 'package:NewSandbox/bloc/theme/theme_bloc.dart';
import 'package:NewSandbox/i18n.dart';
import 'package:NewSandbox/navigation.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bloc/theme/theme_dispatcher.dart';
import 'bloc/theme/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (BuildContext context) => ThemeBloc([
        BrightnessChangeDispatcher(),
        ColorChangeDispatcher(),
      ], ThemeData()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => MaterialApp(
          theme: state.themeData,
          localizationsDelegates: [
            SandboxLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'),
            Locale('ru'),
          ],
          builder: ExtendedNavigator<Router>(router: Router(),),
        ),
      ),
    );
  }

}

