import 'package:flutter/material.dart';

import '../universal_bloc_dispatcher.dart';
import 'theme_event.dart';
import 'theme_state.dart';

abstract class ThemeDispatcher<T extends ThemeEvent, ThemeState> extends UniversalDispatcher<T, ThemeState> {}

class ColorChangeDispatcher extends ThemeDispatcher<ChangeColorThemeEvent, ThemeState> {
  @override
  Stream<ThemeState> dispatch(ChangeColorThemeEvent event, ThemeState state) async* {
    ThemeData newData = ThemeData(
      brightness: state.themeData.brightness,
      primaryColor: event.color,
      accentColor: event.color,
      buttonColor: event.color,
    );
    yield ThemeState(newData);
  }
}

class BrightnessChangeDispatcher extends ThemeDispatcher<ChangeBrightnessThemeEvent, ThemeState> {
  @override
  Stream<ThemeState> dispatch(ChangeBrightnessThemeEvent event, ThemeState state) async* {
    ThemeData newData = ThemeData(
      brightness: event.brightness,
      primaryColor: state.themeData.primaryColor,
      accentColor: state.themeData.accentColor,
      buttonColor: state.themeData.buttonColor,
    );
    yield ThemeState(newData);
  }
}