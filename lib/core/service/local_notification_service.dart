import 'dart:async';
import 'dart:developer';
import 'dart:ffi';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
class LocalNotificationService{
static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

 static StreamController<NotificationResponse> streamController=StreamController();


static onTap(NotificationResponse notificationResponse){


streamController.add(notificationResponse);


}
static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }
  static void showBasicNotification() async {
    AndroidNotificationDetails android = AndroidNotificationDetails(
        'id 1', 'basic notification',
        importance: Importance.max,
        priority: Priority.high,
 sound:
            RawResourceAndroidNotificationSound('notification_sound.mp3'.split('.').first)

       );
DarwinNotificationDetails ios = DarwinNotificationDetails(
  presentAlert: true,
  presentBadge: true,
  presentSound: true,
  badgeNumber: 1,
  sound: 'notification_sound.mp3',


);
       
    NotificationDetails details = NotificationDetails(
      android: android,
      iOS: ios,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'Baisc Notification',
      'body',
      details,
      payload: "Payload Data",
    );
  }


  //repeated Notification

static void showRepeatedNotification() async {
  const AndroidNotificationDetails android = AndroidNotificationDetails(
    'id 2',
    'repeated notification',
    importance: Importance.max,
    priority: Priority.high,
  );

  DarwinNotificationDetails ios = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
    badgeNumber: 1,
  );

  NotificationDetails details = NotificationDetails(
    android: android,
    iOS: ios,
  );

  await flutterLocalNotificationsPlugin.periodicallyShow(
    1,
    'Repeated Notification',
    'body',
    RepeatInterval.daily,
    details,
    payload: "Payload Data",
  );
}



 //showSchduledNotification
  static void showSchduledNotification({required DateTime notificationTime,
  required int notificationid,required String title , }) async {
     AndroidNotificationDetails android = AndroidNotificationDetails(
      'schduled notification',
      'id 3',
      importance: Importance.max,
      priority: Priority.high,
    );

  DarwinNotificationDetails ios = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
    badgeNumber: 1,
  );

    NotificationDetails details =  NotificationDetails(
      android: android,
      iOS: ios,
    );
    tz.initializeTimeZones();
    log(tz.local.name);
    log("Before ${tz.TZDateTime.now(tz.local).hour}");
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    log(currentTimeZone);
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    log(tz.local.name);
    log("After ${tz.TZDateTime.now(tz.local).hour}");


    await flutterLocalNotificationsPlugin.zonedSchedule(
      notificationid,
      title,
      'Time to take ${title}',
      // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      tz.TZDateTime(
        tz.local,
       notificationTime.year,
    notificationTime.month,
    notificationTime.day,
    notificationTime.hour,
    notificationTime.minute,
    notificationTime.second,
      ),
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }


//cancel Notification 
  static void cancelNotification(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }


}