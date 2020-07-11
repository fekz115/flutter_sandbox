import 'package:NewSandbox/l10n.dart';
import 'package:flutter/rendering.dart';

import 'theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePage extends StatelessWidget {
  final Map<String, Brightness> brightnessMap = {
    'Light': Brightness.light,
    'Dark': Brightness.dark,
  };

  final Map<String, Color> colorsMap = {
    'Red': Colors.red,
    'Green': Colors.green,
    'Blue': Colors.blue,
    'Yellow': Colors.yellow,
    'Purple': Colors.purple,
    'Indigo': Colors.indigo,
    'Amber': Colors.amber,
    'Orange': Colors.orange,
    'Pink': Colors.pink,
    'Cyan': Colors.cyan,
    'Teal': Colors.teal,
    'Light Green': Colors.lightGreen,
    'Light Blue': Colors.lightBlue,
    'Lime': Colors.lime,
    'Brown': Colors.brown,
    'Grey': Colors.grey,
    'Blue grey': Colors.blueGrey,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SandboxLocalizations.of(context).themePage),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitle('${SandboxLocalizations.of(context).color}:'),
            _buildColorsList(context, colorsMap),
            _buildTitle('${SandboxLocalizations.of(context).brightness}:'),
            _buildBrightnessList(context, brightnessMap)
          ],
        ),
      ),
    );
  }

  Widget _buildColorsList(BuildContext context, Map<String, Color> colorsMap) {
    int colorGroup = Theme.of(context).accentColor.value;
    ThemeBloc bloc = BlocProvider.of<ThemeBloc>(context);
    return ListView.builder(
      itemCount: colorsMap.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, position) {
        MapEntry<String, Color> entry = colorsMap.entries.skip(position).first;
        Color color = entry.value;
        String title = entry.key;
        return RadioListTile<int>(
          value: color.value,
          title: Text(title),
          groupValue: colorGroup,
          secondary: Icon(
            Icons.color_lens,
            color: Color(color.value),
          ),
          onChanged: (value) => bloc.add(ChangeColorThemeEvent(Color(value))),
        );
      },
    );
  }

  Widget _buildBrightnessList(
      BuildContext context, Map<String, Brightness> brightnessMap) {
    Brightness brightnessGroup = Theme.of(context).brightness;
    ThemeBloc bloc = BlocProvider.of<ThemeBloc>(context);
    return ListView.builder(
      itemCount: brightnessMap.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, position) {
        MapEntry<String, Brightness> entry =
            brightnessMap.entries.skip(position).first;
        Brightness brightness = entry.value;
        String title = entry.key;
        return RadioListTile<Brightness>(
          value: brightness,
          title: Text(title),
          groupValue: brightnessGroup,
          onChanged: (value) => bloc.add(ChangeBrightnessThemeEvent(value)),
        );
      },
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
      ),
    );
  }
}
