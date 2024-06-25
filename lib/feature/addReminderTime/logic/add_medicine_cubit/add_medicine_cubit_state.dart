part of 'add_medicine_cubit_cubit.dart';

@immutable
sealed class AddMedicineState {}

final class AddMedicineCubitInitial extends AddMedicineState {}
final class AddMedicineCubitLoading extends AddMedicineState {}
final class AddMedicineCubitSuccess extends AddMedicineState {}
final class AddMedicineCubitFailure extends AddMedicineState {


  final String error;

  AddMedicineCubitFailure({required this.error});
  
}

