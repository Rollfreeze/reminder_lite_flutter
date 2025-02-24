import 'package:flutter/foundation.dart';
import '../../services/reminder_service.dart';
import '../models/categorized_reminders.dart';
import '../models/reminder_category.dart';
import '../models/result.dart';

class ReminderRepository {
  final ReminderService _reminderService;

  const ReminderRepository(this._reminderService);

  Future<Result<CategorizedReminders>> getCategorizedReminders() async {
    try {
      final data = await _reminderService.fetchFor(ReminderCategory.all);
      return Result<CategorizedReminders>.success(result: CategorizedReminders.from(data));
    } catch (error) {
      if (kDebugMode) debugPrint('fetchForAll method error: $error');
      return const Result<CategorizedReminders>.failure(error: 'Could not get reminders');
    }
  }
}
