import 'package:bloc/bloc.dart';
import 'package:block_statemanagement/Bloc/counter/counter_event.dart';
import 'package:block_statemanagement/Bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }
  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
