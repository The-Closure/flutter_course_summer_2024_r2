import 'package:dio/dio.dart';
import 'package:login_storage_token/main.dart';
import 'package:login_storage_token/model/user_model.dart';
import 'package:login_storage_token/service/login_service.dart';

Future<UserModel> getUser() async {
  Dio req = Dio();

  try {
    Response response = await req.get('https://dummyjson.com/auth/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${prefs.getString('token')}',
          },
        ));

    UserModel userData = UserModel.fromMap(response.data);

    return userData;
  } catch (e) {
    rethrow;
  }
}
