part of 'reminder_bloc.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState.loading() = _Loading;
  const factory ReminderState.loaded({required CategorizedReminders reminders}) = _Loaded;
}
