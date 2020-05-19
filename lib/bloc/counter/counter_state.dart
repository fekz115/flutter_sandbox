import 'package:equatable/equatable.dart';

class CounterState extends Equatable{

  final int _value;
  int get value => _value;

  const CounterState(this._value);

  @override
  List<Object> get props => [value];

}