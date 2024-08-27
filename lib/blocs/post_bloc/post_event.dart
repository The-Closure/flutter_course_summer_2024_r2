part of 'post_bloc.dart';

@immutable
sealed class PostEvent {}

class GetAllPosts extends PostEvent {}
