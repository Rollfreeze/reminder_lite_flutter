import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/data/models/reminder_category.dart';
import '../../../../core/services/dialog_service.dart';
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

    final bloc = context.read<ReminderBloc>();

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar.large(
        largeTitle: Text(
          category.name,
          style: TextStyle(color: category.color),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: BlocConsumer<ReminderBloc, ReminderState>(
          listener: (context, state) {
            final error = state.error;
            if (error != null) DialogService.showErrorMessage(error, context);
          },
          builder: (context, state) {
            final group = state.reminders?.getBy(category);

            if (group == null || group.reminders.isEmpty) {
              return const NoRemindersView();
            }

            return ListView.separated(
              padding: const EdgeInsets.only(top: 40),
              itemCount: state.reminders!.getBy(category).length,
              separatorBuilder: (_, __) => separator,
              itemBuilder: (_, index) {
                final reminder = group.reminders[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 18, 8),
                  child: ReminderListingItem(
                    reminder: reminder,
                    onTap: () => bloc.add(ReminderEvent.edit(reminder)),
                    onCompletionToggle: (value) {
                      if (value == null) return;
                      bloc.add(ReminderEvent.toggleCompletion((reminder.copyWith(isCompleted: value))));
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
