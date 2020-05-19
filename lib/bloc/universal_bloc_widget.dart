import 'package:flutter/material.dart';
import 'universal_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class UniversalBlocWidget<BlocType extends UniversalBloc<dynamic, StateType>, StateType> extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocType, StateType>(
        builder: (context, state) => buildWidget(context, state),
    );
  }

  Widget buildWidget(BuildContext context, StateType state);

}