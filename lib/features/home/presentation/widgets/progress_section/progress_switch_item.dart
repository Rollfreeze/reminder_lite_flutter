import 'package:flutter/cupertino.dart';
import '../../../../../core/data/models/reminder_category.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_typo.dart';

/// A selectable reminder category item for its progress to show.
class ProgressSwitchItem extends StatelessWidget {
  const ProgressSwitchItem({
    required this.category,
    required this.isActive,
    super.key,
  });

  /// An item category.
  final ReminderCategory category;

  /// Is this item currently active.
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        category.name,
        style: AppTypo.semibold16.copyWith(
          color: isActive ? AppColors.white : AppColors.text3,
        ),
      ),
    );
  }
}
