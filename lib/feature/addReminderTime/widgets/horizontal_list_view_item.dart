import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class HorizontalMedicineList extends StatefulWidget {
  final String imagePath;

  const HorizontalMedicineList({
    super.key,
    required this.imagePath,
  });

  @override
  _HorizontalMedicineListState createState() => _HorizontalMedicineListState();
}

class _HorizontalMedicineListState extends State<HorizontalMedicineList> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = _selectedIndex == 0 ? null : 0;
            });
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(end: 12),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: _selectedIndex == 0 ? ColorsManager.mainGreen : ColorsManager.lighterGray,
                  width: 2.0,
                ),
              ),
              child: CircleAvatar(
                radius: 35.r, // Increase the radius to make the avatar larger
                backgroundColor: Colors.white,
                child: Image.asset(
                  scale: 0.5,
                  widget.imagePath,
                  height: 60.h,
                  width: 60.w,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}