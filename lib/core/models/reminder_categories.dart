import 'package:flutter/cupertino.dart';
import '../services/localization_service.dart';
import '../style/app_colors.dart';

enum ReminderCategory {
  today(
    icon: CupertinoIcons.calendar_today,
    color: AppColors.blue,
  ),
  month(
    icon: CupertinoIcons.calendar,
    color: AppColors.red,
  ),
  all(
    icon: CupertinoIcons.cube_box,
    color: AppColors.black,
  ),
  done(
    icon: CupertinoIcons.checkmark,
    color: AppColors.gray5,
  );

  final IconData icon;
  final Color color;

  const ReminderCategory({
    required this.icon,
    required this.color,
  });

  /// Localized name based on the current locale.
  String get name => switch (this) {
        ReminderCategory.today => LocalizationService.locale.today,
        ReminderCategory.month => LocalizationService.locale.thisMonth,
        ReminderCategory.all => LocalizationService.locale.all,
        ReminderCategory.done => LocalizationService.locale.done,
      };
}
