import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_session/main.dart';
import 'package:flutter/material.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  void initNotification() async {
    String? fcmToken = await _firebaseMessaging.getToken();
    print(fcmToken);
    _firebaseMessaging.requestPermission();
    FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
    FirebaseMessaging.onMessageOpenedApp
        .listen(handelBackgroundNotificationEvent);
  }
}

Future<void> handelBackgroundMessage(RemoteMessage message) async {
  print(message.notification!.title);
  print(message.notification!.body);
}

void handelBackgroundNotificationEvent(RemoteMessage message) {
  // print(message.notification!.title);
  // print(message.notification!.body);
  navigatorKey.currentState!.push(
    MaterialPageRoute(
      builder: (context) => NotificationPage(
        notificationTitle: message.notification!.title!,
        notificationBody: message.notification!.body!,
      ),
    ),
  );
}

