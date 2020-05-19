import '../universal_bloc_dispatcher.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class IncrementCounterDispatcher extends UniversalDispatcher<IncrementCounterEvent, CounterState> {
  
  @override
  Stream<CounterState> dispatch(IncrementCounterEvent event, CounterState state) async* {
    yield CounterState(state.value + event.delta);
  }

} 