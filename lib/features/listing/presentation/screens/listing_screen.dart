import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/data/models/reminder_category.dart';
import '../../../../core/services/reminder_bloc/reminder_bloc.dart';
import '../../../../core/style/app_colors.dart';
import '../widgets/no_reminders_view.dart';
import '../widgets/reminder_listing_item.dart';

@RoutePage()
class ListingScreen extends StatelessWidget {
  final ReminderCategory category;

  const ListingScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    const separator = Padding(
      padding: EdgeInsets.only(left: 18),
      child: ColoredBox(
        color: AppColors.gray1,
        child: SizedBox(height: .5, width: double.infinity),
      ),
    );

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar.large(
        largeTitle: Text(
          category.name,
          style: TextStyle(color: category.color),
        ),
      ),
      child: SafeArea(
        child: BlocBuilder<ReminderBloc, ReminderState>(
          builder: (context, state) {
            final group = state.reminders?.getBy(category);

            if (group == null || group.reminders.isEmpty) {
              return const NoRemindersView();
            }

            return ListView.separated(
              padding: const EdgeInsets.only(top: 40),
              itemCount: state.reminders!.getBy(category).length,
              separatorBuilder: (_, __) => separator,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 18, 8),
                child: ReminderListingItem(
                  reminder: group.reminders[index],
                  onChanged: (value) {},
                  onTap: (r) => context.read<ReminderBloc>().add(ReminderEvent.update(r)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
