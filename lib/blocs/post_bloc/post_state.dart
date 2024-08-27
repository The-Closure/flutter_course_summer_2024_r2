part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

class PostSuccess extends PostState {
  final List<PostModel> posts;

  PostSuccess({required this.posts});
}

class PostLoading extends PostState {}

class PostError extends PostState {
  final String errorMesssage;

  PostError({required this.errorMesssage});
}
