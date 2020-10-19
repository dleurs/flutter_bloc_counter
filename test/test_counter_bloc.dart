import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_state.dart';
import 'package:test/test.dart';

//class MockCounterBloc extends MockBloc<CounterState> implements CounterBloc {}

void main() {
  group('CounterBloc', () {
    blocTest(
      'emits [] when nothing is added',
      build: () => CounterBloc(),
      expect: [],
      verify: (bloc) {
        expect(bloc.count, 0);
      },
    );

    blocTest(
      'emits [UpdatedCounterState(1)] when event IncrementCounterEvent() is called',
      build: () => CounterBloc(),
      act: (bloc) => bloc.add(IncrementCounterEvent()),
      expect: [UpdatedCounterState(1)],
      verify: (bloc) {
        expect(bloc.count, 1);
      },
    );

    blocTest(
      'Multiple events',
      build: () => CounterBloc(),
      act: (bloc) => bloc
        ..add(IncrementCounterEvent())
        ..add(IncrementCounterEvent())
        ..add(IncrementCounterEvent())
        ..add(DecrementCounterEvent()),
      expect: [
        UpdatedCounterState(1),
        UpdatedCounterState(2),
        UpdatedCounterState(3),
        UpdatedCounterState(2)
      ],
      verify: (bloc) {
        expect(bloc.count, 2);
      },
    );

    blocTest('Unknown events',
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(null),
        errors: [
          UnknownEventException(),
        ]);
  });
}
