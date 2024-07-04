import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';
import 'package:reminder_lite/features/home/widgets/categories_section/category_button.dart';

/// A section with all reminder categories on [HomePage].
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
              child: CategoryButton.today(
                count: 10,
                onTap: () => context.go('/today'),
              ),
            ),
            const SizedBox(width: 13),
            Flexible(
              child: CategoryButton.forMonth(
                count: 20,
                onTap: () => context.go('/month'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 13),
        Row(
          children: [
            Flexible(
              child: CategoryButton.all(
                count: 30,
                onTap: () => context.go('/all'),
              ),
            ),
            const SizedBox(width: 13),
            Flexible(
              child: CategoryButton.done(
                count: 40,
                onTap: () => context.go('/done'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
