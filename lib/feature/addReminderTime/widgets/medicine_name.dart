import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/widgets/app_text_form_field.dart';
import 'package:reminder/core/widgets/titles.dart';

class MedicineName extends StatelessWidget {
  const MedicineName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesTextHeader(
          title: 'اسم الدواء',
          icon: Icon(
            Iconsax.blend_copy,
            color: Colors.grey,
          ),
        ),
        verticalSpace(20),
        AppTextFormField(
          hintText: 'أوكسيكودون',
          validator: (String? value) {
            // Your validation logic here
          },
        ),
      ],
    );
  }
}