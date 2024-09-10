import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient initService() {
  GraphQLClient client = GraphQLClient(
    link: HttpLink("https://graphqlzero.almansi.me/api"),
    cache: GraphQLCache(
      store: HiveStore(),
    ),
  );

  return client;
}
