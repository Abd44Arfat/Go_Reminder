import 'package:flutter/material.dart';
import 'package:reminder/core/routing/routes.dart';
import 'package:reminder/feature/addReminderTime/add_reminder_time.dart';
import 'package:reminder/feature/addReminderTime/logic/add_medicine_cubit/add_medicine_cubit_cubit.dart';
import 'package:reminder/feature/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/feature/home/logic/medicine_cubit/medicine_cubit.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => AddMedicineCubit(),
            child: AddReminderTime(),
          ),
        );

      default:
        return null;
    }
  }
}
