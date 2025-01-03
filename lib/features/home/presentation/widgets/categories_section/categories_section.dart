import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/presentation/widgets/categories_section/category_button.dart';

/// A section with all reminder categories info.
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(
              child: CategoryButton(
                category: TodayCategory(),
                count: 10,
                onTap: () => context.router.pushNamed('today'),
              ),
            ),
            const SizedBox(width: 13),
            Flexible(
              child: CategoryButton(
                category: ForMonthCategory(),
                count: 20,
                onTap: () => context.router.pushNamed('month'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 13),
        Row(
          children: [
            Flexible(
              child: CategoryButton(
                category: AllCategory(),
                count: 30,
                onTap: () => context.router.pushNamed('all'),
              ),
            ),
            const SizedBox(width: 13),
            Flexible(
              child: CategoryButton(
                category: DoneCategory(),
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
