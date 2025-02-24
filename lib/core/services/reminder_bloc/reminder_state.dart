part of 'reminder_bloc.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState.loading() = _Loading;

  const factory ReminderState.loaded({
    required List<Reminder> today,
    required List<Reminder> month,
    required List<Reminder> all,
    required List<Reminder> done,
  }) = _Loaded;
}
