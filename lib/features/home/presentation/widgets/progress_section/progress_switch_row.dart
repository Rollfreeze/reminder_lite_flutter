import 'package:flutter/cupertino.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_shadows.dart';
import '../../../../../core/models/reminder_categories.dart';
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
            children: [
              Flexible(
                child: ProgressSwitchButton(
                  category: TodayCategory(),
                  onPressed: onTodayPressed,
                  isActive: selectedCategory is TodayCategory,
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: ProgressSwitchButton(
                  category: ForMonthCategory(),
                  onPressed: onForMonthPressed,
                  isActive: selectedCategory is ForMonthCategory,
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: ProgressSwitchButton(
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
