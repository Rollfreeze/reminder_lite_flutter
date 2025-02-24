import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/data/models/reminder_category.dart';
import 'category_button.dart';

/// A section with all reminder categories info.
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

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
                count: 10,
                onTap: () => context.router.pushNamed('today'),
              ),
            ),
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.month,
                count: 20,
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
                count: 30,
                onTap: () => context.router.pushNamed('all'),
              ),
            ),
            Flexible(
              child: CategoryButton(
                category: ReminderCategory.done,
                count: 40,
                onTap: () => context.router.pushNamed('done'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
