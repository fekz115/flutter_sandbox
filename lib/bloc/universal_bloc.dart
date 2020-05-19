import 'package:bloc/bloc.dart';
import 'universal_bloc_dispatcher.dart';

abstract class UniversalBloc<EventType, StateType> extends Bloc<EventType, StateType> {

  Map<Type, UniversalDispatcher<EventType, StateType>> _dispatchersMap;

  UniversalBloc(List<UniversalDispatcher<EventType, StateType>> dispatchers) {
    _dispatchersMap = Map<Type, UniversalDispatcher<EventType, StateType>>();
    dispatchers.forEach((dispatcher) => {
      _dispatchersMap[dispatcher.getType()] = dispatcher
    });
  }

  @override
  Stream<StateType> mapEventToState(EventType event) async* {
    yield* _dispatchersMap[event.runtimeType].dispatch(event, state);
  }

}