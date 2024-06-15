
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/routing/app_router.dart';
import 'package:reminder/core/theming/colors.dart';

import 'core/routing/routes.dart';

class ReminderApp extends StatelessWidget {
  final AppRouter appRouter;
  const ReminderApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Reminder App ',
        theme: ThemeData(
          primaryColor: ColorsManager.mainGreen,
          scaffoldBackgroundColor: Colors.white,
        ),
         


        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      )
    );
  }
}