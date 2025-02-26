import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/data/models/categorized_reminders.dart';
import '../../../../../core/data/models/reminder_category.dart';
import 'category_button.dart';

/// A section with all reminder categories info.
class CategoriesSection extends StatelessWidget {
  final CategorizedReminders? reminders;

  const CategoriesSection({this.reminders, super.key});

  static const _spacing = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: _spacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          spacing: _spacing,
          children: [
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.today,
                count: reminders?.today.length ?? 0,
                onTap: () => context.router.pushNamed('today'),
              ),
            ),
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.month,
                count: reminders?.month.length ?? 0,
                onTap: () => context.router.pushNamed('month'),
              ),
            ),
          ],
        ),
        Row(
          spacing: _spacing,
          children: [
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.all,
                count: reminders?.all.length ?? 0,
                onTap: () => context.router.pushNamed('all'),
              ),
            ),
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.done,
                onTap: () => context.router.pushNamed('done'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
