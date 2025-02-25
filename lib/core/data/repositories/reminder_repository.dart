import 'package:flutter/foundation.dart';
import '../../services/reminder_service.dart';
import '../models/categorized_reminders.dart';
import '../models/reminder_category.dart';
import '../models/result.dart';

class ReminderRepository {
  final ReminderService _reminderService;

  const ReminderRepository(this._reminderService);

  Future<Result<CategorizedReminders>> get() async {
    try {
      final data = await _reminderService.fetchFor(ReminderCategory.all);
      return Result<CategorizedReminders>.success(result: CategorizedReminders.from(data));
    } catch (error) {
      if (kDebugMode) debugPrint('fetchForAll method error: $error');
      return const Result<CategorizedReminders>.failure(error: 'Could not get reminders');
    }
  }

  Future<Result<CategorizedReminders>> add(CategorizedReminders currentReminders) async {
    try {
      final data = await _reminderService.create();
      if (data == null) return Result<CategorizedReminders>.success(result: currentReminders);
      return Result<CategorizedReminders>.success(result: currentReminders.updateWith(data));
    } catch (error) {
      if (kDebugMode) debugPrint('create method error: $error');
      return const Result<CategorizedReminders>.failure(error: 'Could not create reminder');
    }
  }
}
