import 'dart:async';
import 'package:dio/dio.dart';
import 'package:login_storage_token/main.dart';
import 'package:login_storage_token/model/login_mode.dart';

late String token;

Future<bool> login({required LoginModel userData}) async {
  Dio req = Dio();
  try {
    Response response = await req.post(
      'https://dummyjson.com/auth/login',
      data: userData.toMap(),
    );
    await prefs.setString("token", response.data['token']);

    token = response.data!['token'];

    return true;
  } catch (e) {
    return false;
  }
}
