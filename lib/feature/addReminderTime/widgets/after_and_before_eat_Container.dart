import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/theming/colors.dart';
import 'package:reminder/core/theming/styles.dart';

class AfterAndBeforeEatContainer extends StatelessWidget {
  const AfterAndBeforeEatContainer({
    super.key,
    required this.title,
    required this.isSelected, this.icon,
  });

  final String title;
  final IconData? icon;
  final bool isSelected;
  

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected
              ? ColorsManager.mainGreen
              : ColorsManager.moreLighterGray, // Change the border color based on isSelected
          width: 2.3,
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: isSelected
                ? TextStyles.font16BlackBold.copyWith(color: ColorsManager.mainGreen) // Change the text color based on isSelected
                : TextStyles.font16BlackBold,
            textAlign: TextAlign.center,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}