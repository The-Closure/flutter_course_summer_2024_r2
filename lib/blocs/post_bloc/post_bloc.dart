import 'package:bloc/bloc.dart';
import 'package:finishing_bloc/service/get_posts.dart';
import 'package:meta/meta.dart';

import '../../model/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<GetAllPosts>((event, emit) async {
      emit(PostLoading());
      try {
        var result = await getPosts();
        emit(
          PostSuccess(
            posts: result,
          ),
        );
      } catch (e) {
        emit(
          PostError(
            errorMesssage: e.toString(),
          ),
        );
        // emit(
        //   PostError(
        //     errorMesssage: 'Please try again later......',
        //   ),
        // );
      }
    });
  }
}
