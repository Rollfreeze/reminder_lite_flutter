import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../../../../core/data/models/reminder.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/app_typo.dart';

/// A Reminder element of the listing view.
class ReminderListingItem extends StatelessWidget {
  /// Reminder element.
  final Reminder reminder;

  /// Action on tap the checkbox.
  final ValueChanged<bool?> onCompletionToggle;

  /// Action on tap the available space except for checbox.
  final VoidCallback onTap;

  const ReminderListingItem({
    required this.reminder,
    required this.onCompletionToggle,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: CupertinoCheckbox(
            value: reminder.isCompleted,
            onChanged: onCompletionToggle,
          ),
        ),
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              children: [
                if (reminder.date != null)
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          DateFormat('dd.MM.yyyy-HH:mm').format(reminder.date!),
                          style: AppTypo.medium17hint,
                        ),
                      ),
                    ],
                  ),
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
                      ],
                    ),
                  ],
                ),
                if (reminder.notes.isNotEmpty)
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
        ),
      ],
    );
  }
}
