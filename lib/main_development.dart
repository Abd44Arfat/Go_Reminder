
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:reminder/core/constants.dart';
import 'package:reminder/core/di/dependency_injection.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';
import 'package:reminder/reminder_app.dart';

import 'core/routing/app_router.dart';

void main()async  {
  await Hive.initFlutter();
  Hive.registerAdapter(MedicineModelAdapter());
  await Hive.openBox<MedicineModel>(kMedicineBox);
  setupGetIt();
 
  
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(ReminderApp(
    
    appRouter: AppRouter(),
  ));
}
