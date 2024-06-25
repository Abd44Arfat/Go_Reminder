import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:reminder/core/constants.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';

part 'medicine_state.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit() : super(MedicineInitial());
List<MedicineModel>?medicines;
fetchAllMedicine(){



var medicineBox = Hive.box<MedicineModel>(kMedicineBox);
medicines= medicineBox.values.toList();

emit(MedicineSuccess());





  }

  void deleteMedicine(int index) async {
  final medicineToDelete = medicines![index];

  // Delete from Hive
  final medicineBox = Hive.box<MedicineModel>(kMedicineBox);
  await medicineBox.delete(medicineToDelete.key);
}}
