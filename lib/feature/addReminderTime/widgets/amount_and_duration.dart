import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:reminder/core/helpers/extensions.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/routing/routes.dart';
import 'package:reminder/core/widgets/dropdown_field.dart';
import 'package:reminder/core/widgets/titles.dart';
import 'package:reminder/feature/addReminderTime/widgets/after_and_before_eat_Container.dart';

class AmountAndDuration extends StatefulWidget {
  const AmountAndDuration({super.key});

  @override
  State<AmountAndDuration> createState() => _AmountAndDurationState();
}

class _AmountAndDurationState extends State<AmountAndDuration> {
  final List<String> amountItems = ['1', '2', '3', '4', '5'];
  final List<String> durationItems = ['1 day', '2 days', '1 week', '2 weeks', '1 month'];

  String? selectedAmount;
  String? selectedDuration;
    String? selectedContainer = 'قبل الاكل';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesTextHeader(
          title: 'الكميه والمده',
          icon: Icon(
            Iconsax.brifecase_timer_copy,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
       // in the AmountAndDuration widget
DropdownField(
  items: amountItems,
  hint: 'الكميه',
  initialValue: selectedAmount,
  onChanged: (value) {
    setState(() {
      selectedAmount = value;
    });
  },
  onSaved: (value) {
    selectedAmount = value;
  },
),
const SizedBox(height: 16),
DropdownField(
  
  items: durationItems,
  hint: 'المده',
  
  initialValue: selectedDuration,
  onChanged: (value) {
    setState(() {
      selectedDuration = value;
    });
  },
  onSaved: (value) {
    selectedDuration = value;
  },
),
        const SizedBox(height: 16),
verticalSpace(15),
Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedContainer = 'مخصص';
              });
            },
            child: GestureDetector(
           onTap: () {
  setState(() {
    selectedContainer = 'مخصص';
  });
  context.pushNamed(Routes.homeScreen);
},
              child: AfterAndBeforeEatContainer(
                title: 'مخصص',
                icon: Iconsax.add_copy,
                isSelected: selectedContainer == 'مخصص',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedContainer = 'بعد الأكل';
              });
            },
            child: AfterAndBeforeEatContainer(
              title: 'بعد\n الأكل',
              isSelected: selectedContainer == 'بعد الأكل',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedContainer = 'قبل الأكل';
              });
            },
            child: AfterAndBeforeEatContainer(
              title: 'قبل\n الأكل',
              isSelected: selectedContainer == 'قبل الأكل',
            ),
          ),
        ],
      ),
    ],
  );
}
}
