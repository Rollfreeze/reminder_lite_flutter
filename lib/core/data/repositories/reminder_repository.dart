import 'package:flutter/foundation.dart';
import '../../services/reminder_service.dart';
import '../models/reminder.dart';
import '../models/reminder_category.dart';
import '../models/reminder_collection.dart';
import '../models/result.dart';

class ReminderRepository {
  final ReminderService _reminderService;

  const ReminderRepository(this._reminderService);

  Future<Result<ReminderCollection>> getReminders() async {
    try {
      final reminders = await _reminderService.fetchFor(ReminderCategory.all);
      return Success<ReminderCollection>(ReminderCollection.of(reminders));
    } catch (error) {
      if (kDebugMode) debugPrint('getReminderCollection method error: $error');
      return Failure('Could not get reminders');
    }
  }

  Future<Result<ReminderCollection>> addNewReminderTo(ReminderCollection currentReminders) async {
    try {
      final reminder = await _reminderService.create();
      if (reminder == null) return Success(currentReminders);
      return Success(currentReminders.append(reminder));
    } catch (error) {
      if (kDebugMode) debugPrint('createNewReminder method error: $error');
      return Failure('Could not create the reminder');
    }
  }

  Future<Result<ReminderCollection>> edit(
    Reminder reminder, {
    required ReminderCollection currentReminders,
  }) async {
    try {
      final reminders = await _reminderService.edit(reminder);
      if (reminders == null) return Success(currentReminders);
      return Success<ReminderCollection>(ReminderCollection.of(reminders));
    } catch (error) {
      if (kDebugMode) debugPrint('edit method error: $error');
      return Failure('Could not edit the reminder');
    }
  }

  Future<Result<ReminderCollection>> toggleCompletionOf(
    Reminder reminder, {
    required ReminderCollection currentReminders,
  }) async {
    try {
      final reminders = await _reminderService.toggleCompletion(reminder);
      if (reminders == null) return Success(currentReminders);
      return Success<ReminderCollection>(ReminderCollection.of(reminders));
    } catch (error) {
      if (kDebugMode) debugPrint('toggleCompletionOf method error: $error');
      return Failure('Could not toggle completion of the reminder');
    }
  }
}
