import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';

class NewReminderAppBar extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onAdd;

  const NewReminderAppBar({
    super.key,
    required this.onCancel,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 86,
          child: CupertinoButton(
            onPressed: onCancel,
            child: Text(LocalizationService.locale.cancel),
          ),
        ),
        const Spacer(),
        Text(
          LocalizationService.locale.newReminder,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        SizedBox(
          width: 86,
          child: CupertinoButton(
            onPressed: onAdd,
            child: Text(
              LocalizationService.locale.add,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
