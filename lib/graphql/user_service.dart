import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_getx_and_etc/graphql/gql.dart';
import 'package:graphql_getx_and_etc/graphql/init.dart';

getPost() async {
  var request = initService();

  var response = await request.query(QueryOptions(document: gql(userGql)));

  return response;
}
