import 'package:flutter/material.dart';
import '../universal_bloc_widget.dart';
import 'counter_bloc.dart';

class CounterWidget extends UniversalBlocWidget<CounterBloc, CounterState> {
  @override
  Widget buildWidget(context, state) {
    return Center(
      child: Text(
        state.value.toString(),
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}