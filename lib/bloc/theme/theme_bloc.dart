import 'package:flutter/material.dart';
import '../universal_bloc.dart';
import '../universal_bloc_dispatcher.dart';
import 'theme_event.dart';
import 'theme_state.dart';

export 'theme_event.dart';
export 'theme_event.dart';

class ThemeBloc extends UniversalBloc<ThemeEvent, ThemeState> {

  ThemeBloc(List<UniversalDispatcher<ThemeEvent, ThemeState>> dispatchers, this._initialThemeData) : super(dispatchers);

  final ThemeData _initialThemeData;

  @override
  get initialState => super.initialState ?? ThemeState(_initialThemeData);

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    try {
      return ThemeState.fromJson(json);
    } catch(_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) => state.toJson();

}