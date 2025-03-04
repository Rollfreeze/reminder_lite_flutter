import 'package:flutter/cupertino.dart';
import '../../../../core/data/models/reminder.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/app_typo.dart';

/// A Reminder element of the listing view.
class ReminderListingItem extends StatelessWidget {
  /// Reminder element.
  final Reminder reminder;

  /// Change checkbox state.
  final ValueChanged<bool?> onChanged;

  const ReminderListingItem({
    required this.reminder,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: CupertinoCheckbox(
            value: reminder.isDone,
            onChanged: onChanged,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    child: Text(
                      reminder.title,
                      style: AppTypo.bold19,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      if (reminder.isRepetitive)
                        const Icon(
                          size: 20,
                          CupertinoIcons.repeat,
                          color: AppColors.text3,
                        ),
                      const Text('20:01', style: AppTypo.medium17hint),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      reminder.notes,
                      style: AppTypo.medium17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
