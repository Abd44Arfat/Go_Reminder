import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/service/local_notification_service.dart';
import 'package:reminder/core/theming/styles.dart';

class NotificationsContainerToggler extends StatefulWidget {
  const NotificationsContainerToggler({super.key});

  @override
  State<NotificationsContainerToggler> createState() => _NotificationsContainerTogglerState();
}

class _NotificationsContainerTogglerState extends State<NotificationsContainerToggler> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 68.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Switch(
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.white,
            activeTrackColor: Colors.green,
            activeColor: Colors.white,
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched) {
                  // Enable notifications
         
                } else {
                  // Disable notifications
                     LocalNotificationService.flutterLocalNotificationsPlugin.cancelAll();
                      LocalNotificationService.showBasicNotification();
                }
              });
            },
          ),
          Text(
            'الاشعارات',
            style: TextStyles.font10BlackSemibold,
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}