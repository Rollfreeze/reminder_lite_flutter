part of 'reminder_bloc.dart';

@freezed
sealed class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.load() = _Load;
  const factory ReminderEvent.create() = _Create;
  const factory ReminderEvent.edit(Reminder reminder) = _Edit;
  const factory ReminderEvent.toggleCompletion(Reminder reminder) = _ToggleCompletion;
  const factory ReminderEvent.succeed(ReminderCollection reminders) = _Succeed;
  const factory ReminderEvent.fail(String error) = _Fail;
}
