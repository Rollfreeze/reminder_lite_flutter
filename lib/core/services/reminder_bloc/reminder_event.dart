part of 'reminder_bloc.dart';

@freezed
sealed class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.load() = _Load;
  const factory ReminderEvent.create() = _Create;
}
