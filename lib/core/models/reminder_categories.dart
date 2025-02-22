import 'package:flutter/cupertino.dart';
import '../services/localization_service.dart';
import '../style/app_colors.dart';

enum ReminderCategory {
  today(
    code: 0,
    icon: CupertinoIcons.calendar_today,
    color: AppColors.blue,
  ),
  month(
    code: 1,
    icon: CupertinoIcons.calendar,
    color: AppColors.red,
  ),
  all(
    code: 2,
    icon: CupertinoIcons.cube_box,
    color: AppColors.black,
  ),
  done(
    code: 3,
    icon: CupertinoIcons.checkmark,
    color: AppColors.gray5,
  );

  final int code;
  final IconData icon;
  final Color color;

  const ReminderCategory({
    required this.code,
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
