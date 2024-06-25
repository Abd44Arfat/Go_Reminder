import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:reminder/core/helpers/extensions.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/core/widgets/app_text_button.dart';
import 'package:reminder/feature/addReminderTime/logic/add_medicine_cubit/add_medicine_cubit_cubit.dart';
import 'package:reminder/feature/addReminderTime/widgets/add_medecine_form.dart';
import 'package:reminder/feature/addReminderTime/widgets/amount_and_duration.dart';
import 'package:reminder/feature/addReminderTime/widgets/header.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_list_view.dart';
import 'package:reminder/feature/addReminderTime/widgets/medicine_name.dart';
import 'package:reminder/feature/addReminderTime/widgets/notifications_section.dart';

class AddReminderTime extends StatelessWidget {
  AddReminderTime({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(25, 16, 25, 28),
            child: BlocConsumer<AddMedicineCubit, AddMedicineState>(
              listener: (context, state) {
        if (state is AddMedicineCubitFailure) {
          print("failed : ${state.error}");
        }
        if (state is AddMedicineCubitSuccess) {
        
             context.pop();
        }
        
            },
              builder: (context, state) {
                return ModalProgressHUD(
                  
            inAsyncCall:state is AddMedicineCubitLoading  ?true:false ,      
                  child: SingleChildScrollView(child: AddMedicineTimeForm()));
              },
            )),
      ),
    );
  }
}
