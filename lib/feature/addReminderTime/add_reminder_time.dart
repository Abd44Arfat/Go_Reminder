import 'package:flutter/material.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/core/widgets/app_text_button.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/widgets/amount_and_duration.dart';
import 'package:reminder/feature/addReminderTime/widgets/header.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_list_view.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_name.dart';
import 'package:reminder/feature/addReminderTime/widgets/notifications_section.dart';
class AddReminderTime extends StatelessWidget {
  const AddReminderTime({super.key});

  @override
  Widget build(BuildContext context) {
    final imageItems = [
      ImageItem(imagePath: 'assets/images/4.png'),
            ImageItem(imagePath: 'assets/images/3.png'),

      ImageItem(imagePath: 'assets/images/omega.png'),
ImageItem(imagePath: 'assets/images/1.png'),
      // Add more ImageItem instances as needed
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(25, 16, 25, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Header(),
              verticalSpace(30),
              MedicineSpecialityListView(imageItems: imageItems),
              MedicineName(),
              verticalSpace(20),
              AmountAndDuration(),
                            verticalSpace(20),
                            NotificationSection(),

                            verticalSpace(20),

                            AppTextButton(buttonText: 'اضافه', textStyle: TextStyles.font15WhiteBold, onPressed: () {  },)

            ],
          ),
        ),
      ),
    );
  }
}