import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {

  final ThemeData _themeData;

  ThemeState(this._themeData);

  ThemeData get themeData => _themeData;

  @override
  List<Object> get props => [_themeData.accentColor, _themeData.primaryColor, _themeData.brightness];

  factory ThemeState.fromJson(Map<String, dynamic> json) {
    return ThemeState(ThemeData(
      brightness: getBrightnessFromString(json['brightness']),
      primaryColor: Color(json['color']),
      accentColor: Color(json['color']),
      buttonColor: Color(json['color']),
    ));
  }

  Map<String, dynamic> toJson() =>
      {
        'color': themeData.accentColor.value,
        'brightness': themeData.brightness.toString(),
      };

  // TODO: Make normal brightness (de)serialization
  static Brightness getBrightnessFromString(String str) {
    return str == Brightness.dark.toString() ? Brightness.dark : Brightness.light;
  }

}