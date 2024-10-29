import 'package:flutter/services.dart';

class NewReminderService {
  static const _methodChannel = MethodChannel("new_reminder_service");

  static void newReminderBottomSheet() => _methodChannel.invokeMethod("newReminderBottomSheet");
}