import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/native_view_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/widgets/add_reminder_button.dart';
import 'package:reminder_lite/features/home/presentation/widgets/categories_section/categories_section.dart';
import 'package:reminder_lite/features/home/presentation/widgets/progress_section/progress_section.dart';

/// This is a home page with all reminder groups.
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.gray6,
        border: Border(),
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
              AddReminderButton(
                onPressed: ReminderService.create,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
