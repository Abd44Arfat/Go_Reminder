import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/feature/home/widgets/list_view_item.dart';

class MedicineTimeList extends StatefulWidget {
  const MedicineTimeList({super.key});

  @override
  State<MedicineTimeList> createState() => _MedicineTimeListState();
}

class _MedicineTimeListState extends State<MedicineTimeList> {
  List<int> items = List<int>.generate(5, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: ValueKey<int>(items[index]),
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
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListViewItem()
        );
      },
    );
  }
}