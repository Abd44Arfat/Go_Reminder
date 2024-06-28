import 'package:flutter/material.dart';
import 'package:reminder/core/helpers/spacing.dart';
import 'package:reminder/core/widgets/app_text_form_field.dart';
import 'package:reminder/core/widgets/time_form_fiels.dart';
import 'package:reminder/core/widgets/titles.dart';
class NotificationSection extends StatefulWidget {
  const NotificationSection({super.key, required this.onSaved, });
  final FormFieldSetter<DateTime> onSaved;


  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
  DateTime? _notificationTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesTextHeader(
          title: 'الأشعارات',
        ),
        verticalSpace(10),
        TimeTextFormField(
          onSaved: (value) {
            if (value != null) {
              final parts = value.split(':');
              final hour = int.parse(parts[0]);
              final minute = int.parse(parts[1]);
              _notificationTime = DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
                hour,
                minute,
              );
              widget.onSaved?.call(_notificationTime!);
            }
          },
          hintText: '10:00',
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a notification time';
            }
            final parts = value.split(':');
            if (parts.length != 2 || int.tryParse(parts[0]) == null || int.tryParse(parts[1]) == null) {
              return 'Please enter a valid time in the format HH:mm';
            }
            return null;
          },
        ),
      ],
    );
  }
}