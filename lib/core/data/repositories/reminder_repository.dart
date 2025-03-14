import 'package:flutter/foundation.dart';
import '../../services/reminder_service.dart';
import '../models/reminder.dart';
import '../models/reminder_category.dart';
import '../models/reminder_collection.dart';
import '../models/result.dart';

class ReminderRepository {
  final ReminderService _reminderService;

  const ReminderRepository(this._reminderService);

  Future<Result<ReminderCollection>> getReminderCollection() async {
    try {
      final reminders = await _reminderService.fetchFor(ReminderCategory.all);
      return Success<ReminderCollection>(ReminderCollection.of(reminders));
    } catch (error) {
      if (kDebugMode) debugPrint('getReminderCollection method error: $error');
      return Failure('Could not get reminders');
    }
  }

  Future<Result<ReminderCollection>> createNewReminder(ReminderCollection currentReminders) async {
    try {
      final reminder = await _reminderService.create();
      if (reminder == null) return Success(currentReminders);
      return Success(currentReminders.append(reminder));
    } catch (error) {
      if (kDebugMode) debugPrint('createNewReminder method error: $error');
      return Failure('Could not create reminder');
    }
  }

  Future<Result<ReminderCollection>> update(
    Reminder reminder, {
    required ReminderCollection currentReminders,
  }) async {
    try {
      final reminders = await _reminderService.update(reminder);
      if (reminders == null) return Success(currentReminders);
      return Success<ReminderCollection>(ReminderCollection.of(reminders));
    } catch (error) {
      if (kDebugMode) debugPrint('updateReminder method error: $error');
      return Failure('Could not update reminder');
    }
  }
}
