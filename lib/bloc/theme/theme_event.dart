import 'dart:ui';

abstract class ThemeEvent {}

class ChangeColorThemeEvent extends ThemeEvent {

  final Color _color;

  ChangeColorThemeEvent(this._color);

  Color get color => _color;

}

class ChangeBrightnessThemeEvent extends ThemeEvent {

  final Brightness _brightness;

  ChangeBrightnessThemeEvent(this._brightness);

  Brightness get brightness => _brightness;

}