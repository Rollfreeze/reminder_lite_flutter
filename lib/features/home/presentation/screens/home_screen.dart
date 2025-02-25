import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/reminder_bloc/reminder_bloc.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/widgets/add_reminder_button.dart';
import '../widgets/categories_section/categories_section.dart';
import '../widgets/progress_section/progress_section.dart';

/// This is a home page with all reminder groups.
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      navigationBar: const CupertinoNavigationBar(
        border: Border.fromBorderSide(
          BorderSide(color: CupertinoColors.separator, width: 0.5),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const CupertinoSearchTextField(),
                    const SizedBox(height: 30),
                    BlocBuilder<ReminderBloc, ReminderState>(
                      builder: (_, state) => switch (state.processingState) {
                        Processing() => const CategoriesSection(),
                        _ => CategoriesSection(reminders: state.reminders),
                      },
                    ),
                    const SizedBox(height: 25),
                    const ProgressSection(),
                  ],
                ),
              ),
              AddReminderButton(
                onPressed: () => context.read<ReminderBloc>().add(const ReminderEvent.create()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
