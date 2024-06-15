import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                                           Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                             children: [
 Text('أوبلكس',style: TextStyles.font16BlackBold,textAlign: TextAlign.end,),
 Text('قرص واحد بعد الاكل',style: TextStyles.font13GreySemiBold,textAlign: TextAlign.end,),

                                             ],
                                           ),
 horizontalSpace(20),
                  Image.asset('assets/images/omega.png'),
                 

                ],
              ),
            ),
          );
  }
}