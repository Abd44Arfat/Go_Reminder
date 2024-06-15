import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';

class MedicineSpecialityListView extends StatelessWidget {
  final List<ImageItem> imageItems;

  const MedicineSpecialityListView({
    super.key,
    required this.imageItems,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageItems.length,
        itemBuilder: (context, index) {
          final imageItem = imageItems[index];
          return HorizontalMedicineList(
            imagePath: imageItem.imagePath,
          );
        },
      ),
    );
  }
}