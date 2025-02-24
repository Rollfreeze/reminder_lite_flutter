import 'package:flutter/cupertino.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_shadows.dart';
import '../../../../../core/data/models/reminder_category.dart';
import 'progress_switch_button.dart';

/// A Row that contains reminder categories to select for a certain progress circle.
class ProgressSwitchRow extends StatelessWidget {
  /// A chosen reminder category to show.
  final ReminderCategory selectedCategory;

  /// On [TodayCategory] pressed.
  final VoidCallback onTodayPressed;

  /// On [ForMonthCategory] pressed.
  final VoidCallback onForMonthPressed;

  /// on [AllCategory] pressed.
  final VoidCallback onAllPressed;

  const ProgressSwitchRow({
    required this.selectedCategory,
    required this.onTodayPressed,
    required this.onForMonthPressed,
    required this.onAllPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius12,
          color: AppColors.white,
          boxShadow: AppShadows.defaultShadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          child: Row(
            spacing: 14.5,
            children: [
              Flexible(
                child: ProgressSwitchButton(
                  category: ReminderCategory.today,
                  onPressed: onTodayPressed,
                  isActive: selectedCategory == ReminderCategory.today,
                ),
              ),
              Flexible(
                child: ProgressSwitchButton(
                  category: ReminderCategory.month,
                  onPressed: onForMonthPressed,
                  isActive: selectedCategory == ReminderCategory.month,
                ),
              ),
              Flexible(
                child: ProgressSwitchButton(
                  category: ReminderCategory.all,
                  onPressed: onAllPressed,
                  isActive: selectedCategory == ReminderCategory.all,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
