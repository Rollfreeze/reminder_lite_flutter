import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_typo.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row.dart';

/// An item for [CategoriesRow].
class CategoriesRowItem extends StatelessWidget {
  /// An item category.
  final ReminderCategory category;

  /// Callback on pressing.
  final VoidCallback onPressed;

  /// Is this item currently active.
  final bool isActive;

  const CategoriesRowItem({
    super.key,
    required this.category,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppRadius.radius8,
          color: !isActive ? AppColors.white : category.color,
          boxShadow: !isActive ? null : [BoxShadow(blurRadius: 10, color: category.color.withOpacity(0.25))],
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
