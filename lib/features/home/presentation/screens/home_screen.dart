import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/services/reminder_service.dart';
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
                  children: const [
                    CupertinoSearchTextField(),
                    SizedBox(height: 30),
                    CategoriesSection(),
                    SizedBox(height: 25),
                    ProgressSection(),
                  ],
                ),
              ),
              const AddReminderButton(
                onPressed: ReminderService.create,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
