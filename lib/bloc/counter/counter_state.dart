import 'package:meta/meta.dart';

@immutable
abstract class CounterState {
  final int count;

  CounterState(this.count);
}

class InitialCounterState extends CounterState {
  InitialCounterState(int count) : super(count);
}

class UpdatedCounterState extends CounterState {
  UpdatedCounterState(int count) : super(count);
}
