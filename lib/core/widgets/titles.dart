import 'package:flutter/material.dart';
import 'package:reminder/core/theming/styles.dart';

class TitlesTextHeader extends StatelessWidget {
  const TitlesTextHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.font15GreyBold,textAlign: TextAlign.end,
    );
  }
}