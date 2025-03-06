import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../data/models/reminder.dart';
import '../data/models/reminder_category.dart';

/// Service for working with Reminders.
class ReminderService {
  static const _name = 'ReminderServiceMethodChannel';
  static const _methodChannel = MethodChannel(_name);

  Future<Reminder?> create() async {
    try {
      final result = await _methodChannel.invokeMethod('create');
      if (result == null) return null;
      final reminder = Reminder.fromJson(jsonDecode(result) as Map<String, dynamic>);
      if (kDebugMode) debugPrint('Created Reminder: ${reminder.propertiesFormated}');
      return reminder;
    } catch (e) {
      if (kDebugMode) debugPrint('Create Reminder error: $e');
      return null;
    }
  }

  Future<List<Reminder>> fetchFor(ReminderCategory category) async {
    try {
      final result = await _methodChannel.invokeMethod('fetchFor', category.code);
      return Reminder.remindersFromJson(jsonDecode(result) as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) debugPrint('Fetching for $category error: $e');
      return [];
    }
  }

  Future<Reminder?> update(Reminder reminder) async {
    try {
      final result = await _methodChannel.invokeMethod('update');
      if (result == null) return null;
      final reminder = Reminder.fromJson(jsonDecode(result) as Map<String, dynamic>);
      if (kDebugMode) debugPrint('Updated Reminder: ${reminder.propertiesFormated}');
      return reminder;
    } catch (e) {
      if (kDebugMode) debugPrint('Update Reminder error: $e');
      return null;
    }
  }
}
