import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/titles.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column (


      children: [

     TitlesTextHeader(
          title: 'الأشعارات',
         
        ),


      ],
    );
  }
}