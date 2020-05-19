import '../universal_bloc.dart';
import '../universal_bloc_dispatcher.dart';
import 'counter_event.dart';
import 'counter_state.dart';

export 'counter_event.dart';
export 'counter_state.dart';

class CounterBloc extends UniversalBloc<CounterEvent, CounterState> {
  
  CounterBloc(List<UniversalDispatcher<CounterEvent, CounterState>> dispatchers) : super(dispatchers);
  
  @override
  CounterState get initialState => CounterState(0);

}