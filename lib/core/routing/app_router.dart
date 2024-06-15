
import 'package:flutter/material.dart';
import 'package:reminder/core/routing/routes.dart';
import 'package:reminder/feature/addReminderTime/add_reminder_time.dart';
import 'package:reminder/feature/home/home_screen.dart';


import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    case Routes.addReminderTime:
        return MaterialPageRoute(
          builder: (_) => const AddReminderTime(),
        );

      default:
        return null;
    }
  }
}