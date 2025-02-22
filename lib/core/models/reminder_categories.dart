import 'package:flutter/cupertino.dart';
import '../services/localization_service.dart';
import '../style/app_colors.dart';

enum ReminderCategory {
  today(),
  month(),
  all(),
  done();

  /// A category localized name.
  String get name => switch (this) {
        ReminderCategory.today => LocalizationService.locale.today,
        ReminderCategory.month => LocalizationService.locale.thisMonth,
        ReminderCategory.all => LocalizationService.locale.all,
        ReminderCategory.done => LocalizationService.locale.done,
      };

  /// A category icon.
  IconData get icon => switch (this) {
        ReminderCategory.today => CupertinoIcons.calendar_today,
        ReminderCategory.month => CupertinoIcons.calendar,
        ReminderCategory.all => CupertinoIcons.cube_box,
        ReminderCategory.done => CupertinoIcons.checkmark,
      };

  /// A category color.
  Color get color => switch (this) {
        ReminderCategory.today => AppColors.blue,
        ReminderCategory.month => AppColors.red,
        ReminderCategory.all => AppColors.black,
        ReminderCategory.done => AppColors.gray5,
      };
}
