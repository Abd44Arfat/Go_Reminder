import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';
import 'package:reminder/feature/home/logic/medicine_cubit/medicine_cubit.dart';
import 'package:reminder/feature/home/widgets/list_view_item.dart';

class MedicineTimeList extends StatefulWidget {
  const MedicineTimeList({super.key});

  @override
  State<MedicineTimeList> createState() => _MedicineTimeListState();
}

class _MedicineTimeListState extends State<MedicineTimeList> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicineCubit, MedicineState>(
      builder: (context, state) {

List<MedicineModel>medicine=BlocProvider.of<MedicineCubit>(context).medicines??[];

        return ListView.builder(
          itemCount:medicine.length ,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: ValueKey<int>(medicine.length),
                background: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 78.h,
                    width: 53.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
                onDismissed: (DismissDirection direction) {
                  // Remove the item from the list
               

                    BlocProvider.of<MedicineCubit>(context).deleteMedicine(index);
                    BlocProvider.of<MedicineCubit>(context).fetchAllMedicine();
                
                },
                child: ListViewItem(medicine: medicine[index],));
          },
        );
      },
    );
  }
}
