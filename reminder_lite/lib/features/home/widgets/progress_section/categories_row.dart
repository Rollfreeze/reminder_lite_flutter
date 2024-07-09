import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row_item.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A row with categories to select for [ProgressSection].
class CategoriesRow extends StatelessWidget {
  /// A chosen reminder category to show.
  final ReminderCategory selectedCategory;

  /// On [TodayCategory] pressed.
  final VoidCallback onTodayPressed;

  /// On [ForMonthCategory] pressed.
  final VoidCallback onForMonthPressed;

  /// on [AllCategory] pressed.
  final VoidCallback onAllPressed;

  const CategoriesRow({
    super.key,
    required this.selectedCategory,
    required this.onTodayPressed,
    required this.onForMonthPressed,
    required this.onAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius12,
          color: AppColors.white,
          boxShadow: AppShadows.defaultShadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          child: Row(
            children: [
              Flexible(
                child: CategoriesRowItem(
                  category: TodayCategory(),
                  onPressed: onTodayPressed,
                  isActive: selectedCategory is TodayCategory,
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: CategoriesRowItem(
                  category: ForMonthCategory(),
                  onPressed: onForMonthPressed,
                  isActive: selectedCategory is ForMonthCategory,
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: CategoriesRowItem(
                  category: AllCategory(),
                  onPressed: onAllPressed,
                  isActive: selectedCategory is AllCategory,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
