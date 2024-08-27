part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterHasIncreased extends CounterState {
  final int increasedCounter;

  CounterHasIncreased({required this.increasedCounter});
}

class CounterHasDecreased extends CounterState {
  final int decreasedCounter;

  CounterHasDecreased({required this.decreasedCounter});
}
