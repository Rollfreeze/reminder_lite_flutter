import 'package:flutter/services.dart';

/// Service for native views call.
class ReminderService {
  static const _name = "ReminderServiceMethodChannel";
  static const _methodChannel = MethodChannel(_name);

  static Future<void> create() async {
    final result = await _methodChannel.invokeMethod("create");
    print(result);
  }
}
