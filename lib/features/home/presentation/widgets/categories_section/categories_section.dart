import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/data/models/reminder_category.dart';
import '../../../../../core/services/reminder_bloc/reminder_bloc.dart';
import 'category_button.dart';

/// A section with all reminder categories info.
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static const _spacing = 16.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) => Column(
        spacing: _spacing,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            spacing: _spacing,
            children: [
              Flexible(
                child: CategoryButton(
                  category: ReminderCategory.today,
                  count: state.reminders?.today.length,
                  onTap: () => context.router.pushNamed('today'),
                ),
              ),
              Flexible(
                child: CategoryButton(
                  category: ReminderCategory.month,
                  count: state.reminders?.month.length,
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
                  count: state.reminders?.all.length,
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
      ),
    );
  }
}
