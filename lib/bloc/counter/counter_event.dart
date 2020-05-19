import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {}

class IncrementCounterEvent extends CounterEvent {
  
  IncrementCounterEvent(this._delta);
  
  final int _delta;
  
  @override
  List<Object> get props => [_delta];

  int get delta => _delta;

}