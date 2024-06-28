import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';

class TimingHeader extends StatefulWidget {
  const TimingHeader({super.key});

  @override
  State<TimingHeader> createState() => _TimingHeaderState();
}

class _TimingHeaderState extends State<TimingHeader> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ar', null);
  }
  Widget build(BuildContext context) {

    final arabicDateFormat = DateFormat('EEEE', 'ar');
    final arabicDayOfWeek = arabicDateFormat.format(DateTime.now());
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
children: [


       Column(
        crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           Text('مرحبا بك',style: TextStyles.font15GreyBold,textAlign: TextAlign.end,),verticalSpace(10),
           
           
           Text( arabicDayOfWeek,style: TextStyles.font20BlackBold,textAlign: TextAlign.end,),
         ],
       ),

],



    );
  }
}