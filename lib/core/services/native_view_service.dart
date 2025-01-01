import 'package:flutter/services.dart';

/// Service for native views call.
class NativeViewService {
  static const _name = "native_view_service";
  static const _methodChannel = MethodChannel(_name);

  static Future<void> createNewReminder() async => await _methodChannel.invokeMethod("createNewReminder");
}
