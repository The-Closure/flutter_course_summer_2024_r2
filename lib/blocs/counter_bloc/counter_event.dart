part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncreaseCounter extends CounterEvent {}

class DecreaseCounter extends CounterEvent {}
