part of 'lamp_bloc.dart';

@immutable
sealed class LampState {}

final class LampInitial extends LampState {}

class LampIsOn extends LampState {}

class LampIsOff extends LampState {}
