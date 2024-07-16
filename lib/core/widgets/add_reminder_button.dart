import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

/// A button to create new a reminder.
class AddReminderButton extends StatelessWidget {
  /// OnPressed callback.
  final VoidCallback onPressed;

  const AddReminderButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(CupertinoIcons.add_circled_solid, size: 24),
          const SizedBox(width: 5),
          Text(
            LocalizationService.locale.reminder,
            style: AppTypo.semibold16.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
