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
      return Success<CategorizedReminders>(CategorizedReminders.from(data));
    } catch (error) {
      if (kDebugMode) debugPrint('getCategorizedReminders method error: $error');
      return Failure('Could not get reminders');
    }
  }

  Future<Result<CategorizedReminders>> createReminder(CategorizedReminders currentReminders) async {
    try {
      final data = await _reminderService.create();
      if (data == null) return Success(currentReminders);
      return Success(currentReminders.updateWith(data));
    } catch (error) {
      if (kDebugMode) debugPrint('createReminder method error: $error');
      return Failure('Could not create reminder');
    }
  }
}
