import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter;

  CounterBloc({this.counter = 0}) : super(InitialCounterState(counter));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementCounterEvent) {
      this.counter = this.counter + 1;
      yield UpdatedCounterState(this.counter);
    } else if (event is DecrementCounterEvent) {
      this.counter = this.counter - 1;
      yield UpdatedCounterState(this.counter);
    }
  }
}
