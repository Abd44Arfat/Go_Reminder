import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:reminder/core/constants.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';

part 'medicine_state.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit() : super(MedicineInitial());
  List<MedicineModel>? medicines;

  void fetchAllMedicine() {
    var medicineBox = Hive.box<MedicineModel>(kMedicineBox);
    medicines = medicineBox.values.toList();
    emit(MedicineSuccess());
  }

  void deleteMedicine(int index) async {
    final medicineToDelete = medicines![index];
    final medicineBox = Hive.box<MedicineModel>(kMedicineBox);
    await medicineBox.delete(medicineToDelete.key);
  }

  DateTime get valueOfMedicine {
  if (medicines != null && medicines!.isNotEmpty) {
    // Sort the medicines by notification time in ascending order
    medicines!.sort((a, b) => a.notificationTime.compareTo(b.notificationTime));

    // Return the medicine with the earliest notification time
    return medicines!.first.notificationTime;
  } else {
    return DateTime.now();
  }
}
}