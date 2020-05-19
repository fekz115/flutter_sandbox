abstract class UniversalDispatcher<EventType, StateType> {

  Type getType() => EventType;

  Stream<StateType> dispatch(EventType event, StateType state);

}