import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/shared/NotificationManagerService.dart';
import 'package:ghelasomnath/util/font.dart';
import 'package:ghelasomnath/util/string.dart';

class AppWidget extends StatefulWidget {
  @override
  createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final notificationManagerService = NotificationManagerService();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      notificationManagerService.initNotificationManager();
      notificationManagerService.showNotificationWithDefaultSound(
          message['notification']['title'], message['notification']['body']);
    }, onLaunch: (Map<String, dynamic> message) async {
      notificationManagerService.initNotificationManager();
      notificationManagerService.showNotificationWithDefaultSound(
          message['notification']['title'], message['notification']['body']);
    }, onResume: (Map<String, dynamic> message) async {
      notificationManagerService.initNotificationManager();
      notificationManagerService.showNotificationWithDefaultSound(
          message['notification']['title'], message['notification']['body']);
    });
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true, badge: true, alert: true, provisional: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {});

    _firebaseMessaging.getToken().then((String token) {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        title: appName,
        theme: ThemeData(
            brightness: Brightness.light,
            accentColor: Colors.blue,
            primaryColor: Colors.blue,
            primarySwatch: Colors.blue,
            fontFamily: quickFont),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute);
  }
}
