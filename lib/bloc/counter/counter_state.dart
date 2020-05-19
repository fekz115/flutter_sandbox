import 'package:equatable/equatable.dart';

class CounterState extends Equatable{

  final int _value;
  int get value => _value;

  const CounterState(this._value);

  @override
  List<Object> get props => [value];

  factory CounterState.fromJson(Map<String, dynamic> json) {
    return CounterState(json['value']);
  }

  Map<String, dynamic> toJson() =>
    {
      'value': value,
    };

}