import 'package:flutter/material.dart';
import 'package:reminder/core/helpers/extensions.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/routing/routes.dart';
import 'package:reminder/core/theming/colors.dart';
import 'package:reminder/core/theming/styles.dart';
import 'package:reminder/core/widgets/titles.dart';
import 'package:reminder/feature/home/widgets/app_green_container.dart';
import 'package:reminder/feature/home/widgets/medicine_time_list.dart';
import 'package:reminder/feature/home/widgets/timing_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


floatingActionButton: FloatingActionButton(

  foregroundColor: Colors.white,
  backgroundColor: ColorsManager.mainGreen,
  elevation: 0,
    onPressed: () {
    context.pushNamed(Routes.addReminderTime);
   
      
       
    
    },
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

     backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
 
          width: double.infinity,
          margin:const EdgeInsets.fromLTRB(25,
           16,
            25,
             28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

TimingHeader(),

    verticalSpace(30),

         AppGreenContainer(),

         verticalSpace(15),
                             Text(' اليوم ',style: TextStyles.font15GreyBold,),

Expanded(child: MedicineTimeList())

            ],
          ),
        ),
      ),
    );
  }
}
