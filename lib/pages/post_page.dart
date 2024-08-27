import 'package:finishing_bloc/blocs/post_bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<PostBloc>().add(GetAllPosts());
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //   },
      // ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostSuccess) {
            return ListView.separated(
              itemCount: state.posts.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    state.posts[index].title,
                  ),
                  subtitle: Text(
                    state.posts[index].body,
                  ),
                  leading: Text(
                    state.posts[index].id.toString(),
                  ),
                );
              },
            );
          } else if (state is PostError) {
            return Center(
              child: Text(
                state.errorMesssage,
              ),
            );
          } else if (state is PostLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // context.read<PostBloc>().add(GetAllPosts());
            return Container();
          }
        },
      ),
    );
  }
}
