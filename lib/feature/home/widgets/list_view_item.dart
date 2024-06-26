import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/feature/home/data/models/medicine_model.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.medicine});
final MedicineModel medicine;
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
 Text(medicine.title,style: TextStyles.font16BlackBold,textAlign: TextAlign.end,),
 Text('قرص ${medicine.amount}  ${medicine.befireAndAfter}',style: TextStyles.font13GreySemiBold,textAlign: TextAlign.end,),

                                             ],
                                           ),
 horizontalSpace(20),
                  Image.asset(medicine.image),
                 

                ],
              ),
            ),
          );
  }
}