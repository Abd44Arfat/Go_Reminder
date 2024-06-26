import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/feature/addReminderTime/data/models/medicine_model.dart';
import 'package:reminder/feature/addReminderTime/widgets/horizontal_list_view_item.dart';

class MedicineSpecialityListView extends StatefulWidget {
  final List<ImageItem> imageItems;
  final ValueChanged<String> onImageSelected;

  const MedicineSpecialityListView({
    super.key,
    required this.imageItems, required this.onImageSelected,
  });

  @override
  State<MedicineSpecialityListView> createState() => _MedicineSpecialityListViewState();
}

class _MedicineSpecialityListViewState extends State<MedicineSpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.imageItems.length,
        itemBuilder: (context, index) {

          
          final imageItem = widget.imageItems[index];
          return GestureDetector(

           onTap: () {
              setState(() {
                if (selectedSpecializationIndex != index) {
                  selectedSpecializationIndex = index;
                  widget.onImageSelected(imageItem.imagePath);
                }}
            );  },
            child: HorizontalMedicineList(
              imagePath: imageItem.imagePath, itemIndex: index, selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    // Call the onImageSelected callback with the first image path on initial load
    widget.onImageSelected(widget.imageItems[0].imagePath);
  }

}
