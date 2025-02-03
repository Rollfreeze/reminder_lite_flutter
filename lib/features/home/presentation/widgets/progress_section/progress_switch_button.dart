import 'package:flutter/cupertino.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_typo.dart';
import '../../../../../core/models/reminder_categories.dart';

/// A selectable reminder category item for its progress to show.
class ProgressSwitchButton extends StatelessWidget {
  /// An item category.
  final ReminderCategory category;

  /// Callback on pressing.
  final VoidCallback onPressed;

  /// Is this item currently active.
  final bool isActive;

  const ProgressSwitchButton({
    required this.category,
    required this.onPressed,
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppRadius.radius8,
          color: !isActive ? AppColors.white : category.color,
          boxShadow: !isActive
              ? null
              : [
                  BoxShadow(
                    blurRadius: 10,
                    color: category.color.withAlpha(64),
                  ),
                ],
        ),
        child: Center(
          child: Text(
            category.name,
            style: AppTypo.semibold16.copyWith(color: !isActive ? AppColors.text3 : AppColors.white),
          ),
        ),
      ),
    );
  }
}
