import '../universal_bloc.dart';
import '../universal_bloc_dispatcher.dart';
import 'counter_event.dart';
import 'counter_state.dart';

export 'counter_event.dart';
export 'counter_state.dart';

class CounterBloc extends UniversalBloc<CounterEvent, CounterState> {
  
  CounterBloc(List<UniversalDispatcher<CounterEvent, CounterState>> dispatchers) : super(dispatchers);
  
  @override
  CounterState get initialState => super.initialState ?? CounterState(0);

  @override
  CounterState fromJson(Map<String, dynamic> json) {
     try {
      return CounterState.fromJson(json);
    } catch(_) {
      return null;
    }
  }  
  @override
  Map<String, dynamic> toJson(CounterState state)
    => state.toJson();

}