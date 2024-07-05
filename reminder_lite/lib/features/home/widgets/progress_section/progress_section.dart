import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_section.dart';

/// A section with reminder categories progress on [HomePage].
class ProgressSection extends StatelessWidget {
  /// On [TodayCategory] pressed.
  final VoidCallback onTodayPressed;

  /// On [ForMonthCategory] pressed.
  final VoidCallback onForMonthPressed;

  /// on [AllCategory] pressed.
  final VoidCallback onAllPressed;

  /// A chosen reminder category to show.
  final ReminderCategory selectedCategory;

  const ProgressSection({
    super.key,
    required this.onTodayPressed,
    required this.onForMonthPressed,
    required this.onAllPressed,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CategoriesRow(
          onTodayPressed: onTodayPressed,
          onForMonthPressed: onForMonthPressed,
          onAllPressed: onAllPressed,
          selectedCategory: selectedCategory,
        ),
        const SizedBox(height: 18),
        const ProgressCircleSection(completed: 4, total: 10),
      ],
    );
  }
}
