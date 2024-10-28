import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/new_reminder/new_reminder_app_bar.dart';

class NewReminderScreen extends StatefulWidget {
  const NewReminderScreen({super.key});

  /// Opens the screen in Cupertino Bottom Sheet.
  static void open(BuildContext context) => showCupertinoModalBottomSheet(
        context: context,
        builder: (context) => const NewReminderScreen(),
      );

  @override
  State<NewReminderScreen> createState() => _NewReminderScreenState();
}

class _NewReminderScreenState extends State<NewReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      child: Column(
        children: [
          NewReminderAppBar(
            onCancel: context.router.maybePop,
            onAdd: () => throw UnimplementedError(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 43, 16, 20),
            child: CupertinoTextField(
              maxLines: 4,
              placeholder: "${LocalizationService.locale.name}\n\n\n",
              placeholderStyle: const TextStyle(
                color: AppColors.gray1,
              ),
              decoration: const BoxDecoration(
                borderRadius: AppRadius.radius12,
                color: AppColors.white,
                boxShadow: AppShadows.shadowSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
