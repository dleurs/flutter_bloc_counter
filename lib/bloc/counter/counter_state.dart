import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int count;
  CounterState(this.count);

  @override
  List<Object> get props => [count];
}

class InitialCounterState extends CounterState {
  InitialCounterState(int count) : super(count);

  @override
  String toString() => "InitialCounterState with count:${count.toString()}";
}

class UpdatedCounterState extends CounterState {
  UpdatedCounterState(int count) : super(count);

  @override
  String toString() =>
      "UpdatedCounterState with count:${count.toString()}"; // For testing
}
