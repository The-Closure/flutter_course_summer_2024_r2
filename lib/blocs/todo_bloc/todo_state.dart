part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoSuccess extends TodoState {
  final List<TodoModel> todos;

  TodoSuccess({required this.todos});
}

class TodoError extends TodoState {
  final String errorMessage;

  TodoError({required this.errorMessage});
}

class TodoLoading extends TodoState {}
