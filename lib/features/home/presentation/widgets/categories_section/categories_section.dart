import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/data/models/reminder_category.dart';
import '../../../../../core/router/app_router.dart';
import '../../../../../core/services/reminder_bloc/reminder_bloc.dart';
import 'category_button.dart';

/// A section with all reminder categories info.
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static const _spacing = 16.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) {
        final reminders = state.reminders;
        const categories = ReminderCategory.values;

        Widget buildCategoryButton(ReminderCategory category) {
          final group = reminders?.getBy(category);
          return Expanded(
            child: CategoryButton(
              category: category,
              count: category == ReminderCategory.done ? null : group?.length,
              onTap: group == null ? null : () => context.router.push(ListingRoute(group: group)),
            ),
          );
        }

        // Chunk categories into pairs of two.
        final rows = List.generate(
          (categories.length / 2).ceil(), // Number of rows.
          (index) {
            final start = index * 2;
            final end = start + 2;
            final pair = categories.sublist(start, end.clamp(0, categories.length));

            return Row(
              spacing: _spacing,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: pair.map(buildCategoryButton).toList(),
            );
          },
        );

        return Column(
          spacing: _spacing,
          mainAxisSize: MainAxisSize.min,
          children: rows.map((row) => row).toList(),
        );
      },
    );
  }
}
