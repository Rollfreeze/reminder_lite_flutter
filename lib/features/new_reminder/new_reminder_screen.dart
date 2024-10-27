import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';

class NewReminderScreen extends StatelessWidget {
  const NewReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
