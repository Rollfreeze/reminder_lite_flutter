import 'package:flutter/cupertino.dart';
import '../services/localization_service.dart';
import '../style/app_colors.dart';
import '../style/app_typo.dart';

/// A button to create new a reminder.
class AddReminderButton extends StatelessWidget {
  /// OnPressed callback.
  final VoidCallback onPressed;

  const AddReminderButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(CupertinoIcons.add_circled_solid, size: 30),
          const SizedBox(width: 8),
          Text(
            LocalizationService.locale.reminder,
            style: AppTypo.semibold18.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
