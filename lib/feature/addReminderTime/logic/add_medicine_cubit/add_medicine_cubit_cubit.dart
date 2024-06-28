import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:reminder/core/constants.dart';
import 'package:reminder/core/service/local_notification_service.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';

part 'add_medicine_cubit_state.dart';

class AddMedicineCubit extends Cubit<AddMedicineState> {
  AddMedicineCubit() : super(AddMedicineCubitInitial());

  bool isLoading = false;

  addMedicine(MedicineModel medicine) async {
    emit(AddMedicineCubitLoading());
    try {
      var medicineBox = Hive.box<MedicineModel>(kMedicineBox);

      await medicineBox.add(medicine);
      LocalNotificationService.showSchduledNotification(
        
          notificationTime: medicine.notificationTime, notificationid: medicine.id, title: medicine.title,
          );
      emit(AddMedicineCubitSuccess());
    } catch (e) {
      emit(AddMedicineCubitFailure(error: e.toString()));
    }
  }
}
