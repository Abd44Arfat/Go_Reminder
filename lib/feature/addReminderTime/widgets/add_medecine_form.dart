import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/core/widgets/app_text_button.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/logic/add_medicine_cubit/add_medicine_cubit_cubit.dart';
import 'package:reminder/feature/addReminderTime/widgets/amount_and_duration.dart';
import 'package:reminder/feature/addReminderTime/widgets/header.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_list_view.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_name.dart';
import 'package:reminder/feature/addReminderTime/widgets/notifications_section.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';
import 'package:reminder/feature/home/logic/medicine_cubit/medicine_cubit.dart';

final imageItems = [
  ImageItem(imagePath: 'assets/images/4.png'),
  ImageItem(imagePath: 'assets/images/3.png'),

  ImageItem(imagePath: 'assets/images/omega.png'),
  ImageItem(imagePath: 'assets/images/1.png'),

  // Add more ImageItem instances as needed
];

class AddMedicineTimeForm extends StatefulWidget {
  const AddMedicineTimeForm({super.key});

  @override
  State<AddMedicineTimeForm> createState() => _AddMedicineTimeFormState();
}

class _AddMedicineTimeFormState extends State<AddMedicineTimeForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

    String? title, date, amount, image, beforeAndAfter;

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Header(),
          verticalSpace(30),
          Column(
            children: [
              MedicineSpecialityListView(
                imageItems: imageItems,
                onImageSelected: (selectedImagePath) {
                  image = selectedImagePath;
                },
              ),
              MedicineName(
                onSaved: (value) {
                  title = value;
                },
              ),
              verticalSpace(20),
              AmountAndDuration(
                onSaved1: (value) {
                  amount = value;
                },
                onSaved2: (value) {
                  date = value;
                },
                onContainerAfterSelected: (String value) {
                  beforeAndAfter = value;
                },
                onContainerBeforeSelected: (String value) {
                  beforeAndAfter = value;
                },
              ),
              // NotificationSection(),
              verticalSpace(20),
              AppTextButton(
                buttonText: 'اضافه',
                textStyle: TextStyles.font15WhiteBold,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    print("#######################");
                    print(date);
                    print(amount);
                    print(title);
                    print(image);
                    print(beforeAndAfter);
                    print("#######################");

                    var medicineModel = MedicineModel(
                        image: image!,
                        amount: amount!,
                        date: date!,
                        title: title!);
                    BlocProvider.of<AddMedicineCubit>(context)
                        .addMedicine(medicineModel);
                    BlocProvider.of<MedicineCubit>(context).fetchAllMedicine();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
