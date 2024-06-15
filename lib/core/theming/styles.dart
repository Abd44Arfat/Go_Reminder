
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder/core/theming/colors.dart';
import 'package:reminder/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: Colors.black,
    fontFamily: 'Cairo'
  );
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: Colors.black,
    fontFamily: 'Cairo'
  );
  static TextStyle font15GreenBold = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainGreen,
        fontFamily: 'Cairo'

  );

  static TextStyle font15GreyBold = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.gray,
        fontFamily: 'Cairo'

  );
   static TextStyle font15Greyregular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
        fontFamily: 'Cairo'

  );
    static TextStyle font13GreySemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.gray,
        fontFamily: 'Cairo'

  );
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
        fontFamily: 'Cairo'

  );
    static TextStyle font10BlackSemibold= TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.black,
    fontFamily: 'Cairo'

  );


}
