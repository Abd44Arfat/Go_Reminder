import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class HorizontalMedicineList extends StatelessWidget {
  final String imagePath;
  final int itemIndex;
  final int selectedIndex;
  const HorizontalMedicineList({
    super.key,
    required this.imagePath, required this.itemIndex, required this.selectedIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
 itemIndex == selectedIndex

       ? Padding(
          padding: EdgeInsetsDirectional.only(end: 12),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:  ColorsManager.mainGreen,
                width: 3.0,
              ),
            ),
            child: CircleAvatar(
              radius: 35.r, // Increase the radius to make the avatar larger
              backgroundColor: Colors.white,
              child: Image.asset(
                scale: 0.5,
                imagePath,
                height: 65.h,
                width: 65.w,
              ),
            ),
          ),
        )

//second view
:Padding(
          padding: EdgeInsetsDirectional.only(end: 12),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:  ColorsManager.lightGray,
                width: .5,
              ),
            ),
            child: CircleAvatar(
              radius: 35.r, // Increase the radius to make the avatar larger
              backgroundColor: Colors.white,
              child: Image.asset(
                scale: 0.5,
                imagePath,
                height: 60.h,
                width: 60.w,
              ),
            ),
          ),
        ),


      ],
    );
  }
}