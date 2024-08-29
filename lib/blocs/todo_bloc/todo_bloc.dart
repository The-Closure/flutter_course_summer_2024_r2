import 'package:bloc/bloc.dart';
import 'package:bloc_session_3/services/todo_service.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<GetAllTodoEvent>((event, emit) async {
      emit(TodoLoading());
      try {
        List<TodoModel> result = await getAllTodo();
        emit(
          TodoSuccess(
            todos: result,
          ),
        );
      } catch (e) {
        emit(
          TodoError(
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }
}
