import 'package:flutter/material.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/theming/styles.dart';

class TitlesTextHeader extends StatelessWidget {
  const TitlesTextHeader({super.key, required this.title, this.icon});
  final String title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Text(
          title,
          style: TextStyles.font15GreyBold,
          textAlign: TextAlign.end,
        ),
        horizontalSpace(4),
        if (icon != null) icon!,
       
      ],
    );
  }
}