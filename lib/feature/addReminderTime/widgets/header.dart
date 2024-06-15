import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:reminder/core/helpers/extensions.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/routing/routes.dart';
import 'package:reminder/core/theming/colors.dart';
import 'package:reminder/core/theming/styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return        Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
                 Text('إضافة دواء',style: TextStyles.font22BlackExtraBold,textAlign: TextAlign.end,),
horizontalSpace(10),
        GestureDetector(
          onTap: (){


            context.pop();
          },
          child: Container(height: 40.h,width: 40.w,decoration: BoxDecoration(
          
          color:ColorsManager.lighterGray,
          borderRadius: BorderRadius.circular(12)) ,
          child: Icon(Iconsax.arrow_right_4,),),
          ),
      ],
    );

  }
}