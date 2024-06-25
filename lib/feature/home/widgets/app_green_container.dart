
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/feature/home/widgets/notifications_container_toggler.dart';

class AppGreenContainer extends StatelessWidget {
  const AppGreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

height: 130.h,

child: Stack(
  
  
  alignment: Alignment.bottomCenter,
  children: [
Container(width: double.infinity,
height: 90.h,
padding: EdgeInsets.symmetric(

horizontal: 16.w,
vertical: 16.h

),
decoration: BoxDecoration(

 borderRadius: BorderRadius.circular(24.0),
 image: DecorationImage(

image: AssetImage('assets/images/green_card.png'),
fit: BoxFit.cover


 )
 ),
 child:Column(
 crossAxisAlignment: CrossAxisAlignment.center,
 children: [
 Column(
     crossAxisAlignment: CrossAxisAlignment.center,
 
   children: [
     Text('أوبلكس',style: TextStyles.font16BlackBold,textAlign: TextAlign.end,),
     verticalSpace(5) ,
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
  
          horizontalSpace(10),
          Text(
            'بعد 3 ساعات',
            style: TextStyles.font15GreenBold,
            textAlign: TextAlign.end,
          ),
                      horizontalSpace(5),
 
              Icon(Icons.alarm, color: Colors.green, size: 20),
                     SizedBox(width: 30.w,),
        ],
      )]),
 
 
 ])
 ),

Positioned(
  
  right:-20 ,
  bottom: 0,
  child:Image.asset('assets/images/medicne.png',height: 120.h,) ),
  

  
Positioned(
  
  left:20 ,
  bottom: 10,
  child:NotificationsContainerToggler() ),
],
 
 ));





    
}}