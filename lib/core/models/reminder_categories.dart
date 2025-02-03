import 'package:flutter/cupertino.dart';
import '../services/localization_service.dart';
import '../style/app_colors.dart';

sealed class ReminderCategory {
  /// A category name.
  final String name;

  /// A category icon.
  final IconData icon;

  /// A category color theme.
  final Color color;

  const ReminderCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}

final class TodayCategory implements ReminderCategory {
  @override
  String get name => LocalizationService.locale.today;

  @override
  IconData get icon => CupertinoIcons.calendar_today;

  @override
  Color get color => AppColors.blue;
}

final class ForMonthCategory implements ReminderCategory {
  @override
  String get name => LocalizationService.locale.thisMonth;

  @override
  IconData get icon => CupertinoIcons.calendar;

  @override
  Color get color => AppColors.red;
}

final class AllCategory implements ReminderCategory {
  @override
  String get name => LocalizationService.locale.all;

  @override
  IconData get icon => CupertinoIcons.cube_box;

  @override
  Color get color => AppColors.black;
}

final class DoneCategory implements ReminderCategory {
  @override
  String get name => LocalizationService.locale.done;

  @override
  IconData get icon => CupertinoIcons.checkmark;

  @override
  Color get color => AppColors.gray5;
}
