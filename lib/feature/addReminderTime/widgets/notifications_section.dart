import 'package:flutter/material.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/widgets/app_text_form_field.dart';
import 'package:reminder/core/widgets/titles.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({super.key});

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
String?time;

  @override
  Widget build(BuildContext context) {
    return Column (


      children: [

     TitlesTextHeader(
          title: 'الأشعارات',
         
        ),
                              verticalSpace(10),

AppTextFormField(
  onSaved:(value){time=value;} ,
  
  hintText: '10:00',   validator: (String? value) {
            // Your validation logic here
          },),

          

      ],
    );
  }
}