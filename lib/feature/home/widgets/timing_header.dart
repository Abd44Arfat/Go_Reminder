import 'package:flutter/material.dart';
import 'package:reminder/core/theming/styles.dart';

class TimingHeader extends StatelessWidget {
  const TimingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
children: [


       Column(
        crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           Text('مرحبا عبدالرحمن',style: TextStyles.font15Greyregular,textAlign: TextAlign.end,),
           
           Text('الإثنين',style: TextStyles.font20BlackBold,textAlign: TextAlign.end,),
         ],
       ),

],



    );
  }
}