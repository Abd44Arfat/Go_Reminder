
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/di/dependency_injection.dart';
import 'package:reminder/reminder_app.dart';

import 'core/routing/app_router.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(ReminderApp(
    
    appRouter: AppRouter(),
  ));
}
