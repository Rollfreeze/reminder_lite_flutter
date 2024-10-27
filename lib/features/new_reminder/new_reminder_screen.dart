import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';

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
          /// AppBar.
          Row(
            children: [
              SizedBox(
                width: 86,
                child: CupertinoButton(
                  onPressed: () {},
                  child: Text(LocalizationService.locale.cancel),
                ),
              ),
              const Spacer(),
              Text(
                LocalizationService.locale.newReminder,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                width: 86,
                child: CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    LocalizationService.locale.add,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 43, 16, 20),
            child: CupertinoTextField(
              maxLines: 4,
              // decoration: BoxDecoration(),
            ),
          ),
        ],
      ),
    );
  }
}
