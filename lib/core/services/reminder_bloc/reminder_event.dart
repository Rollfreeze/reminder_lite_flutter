part of 'reminder_bloc.dart';

@freezed
sealed class ReminderEvent with _$ReminderEvent {
  /// Bussiness events.
  const factory ReminderEvent.load() = _Load;
  const factory ReminderEvent.create() = _Create;

  /// UI change events.
  const factory ReminderEvent.succeed(CategorizedReminders reminders) = _Succeed;
  const factory ReminderEvent.fail(String error) = _Fail;
}
